# 直接使用Nginx镜像（无需Node构建阶段）
#FROM registry.cn-shanghai.aliyuncs.com/acr-lf-test/test:nginx
FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/nginx_optimized

# 复制静态文件
COPY dist/ /usr/share/nginx/html/

# 复制自定义Nginx配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露端口
EXPOSE 80

# 保持Nginx前台运行
CMD ["nginx", "-g", "daemon off;"]
