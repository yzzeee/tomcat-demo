FROM default-route-openshift-image-registry.apps.ocp4.test.com/zzz2613-workspace/tomcat:8.0.51-jre8-alpine

LABEL maintainer "zzz2613"

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

EXPOSE 8080
