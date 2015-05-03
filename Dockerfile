FROM busybox:latest

ADD https://github.com/upfluence/vulcand-auth/releases/download/v0.0.1/vulcand-linux-amd64 /vulcand
RUN chmod +x /vulcand

CMD /vulcand -logSeverity=INFO -etcd="http://172.17.42.1:4001"
