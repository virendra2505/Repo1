FROM centos:7
RUN yum install java.openjdk -yum
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.94/bin/apache-tomcat-8.5.94.tar.gz /apache-tomcat
RUN tar -xzf ~/apache-tomcat-8.5.88.tar.gz -c /opt
WORKDIR /opt/apache-tomcat-8.5.88
run ls /opt/apache-tomcat-8.5.88/ 
CMD ["/opt/apache-tomcat-8.5.88/bin/catalina.sh","run"]