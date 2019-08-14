FROM centos
RUN yum install -y wget curl telnet net-tools make cmake gcc gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel && wget http://nginx.org/download/nginx-1.17.2.tar.gz && tar zxvf nginx-1.17.2.tar.gz && cd nginx-1.17.2 && ./configure --with-http_ssl_module -- with-stream && make && make install && ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx && yum clean all
