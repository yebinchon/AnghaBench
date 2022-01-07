
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int port ;
typedef int host ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int accept (int,struct sockaddr*,int*) ;
 int close (int) ;
 int err (char*,...) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 int info (char*,char*,...) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int tcpd_auth (int) ;

__attribute__((used)) static int do_accept(int listenfd)
{
 int connfd;
 struct sockaddr_storage ss;
 socklen_t len = sizeof(ss);
 char host[NI_MAXHOST], port[NI_MAXSERV];
 int rc;

 memset(&ss, 0, sizeof(ss));

 connfd = accept(listenfd, (struct sockaddr *)&ss, &len);
 if (connfd < 0) {
  err("failed to accept connection");
  return -1;
 }

 rc = getnameinfo((struct sockaddr *)&ss, len, host, sizeof(host),
    port, sizeof(port), NI_NUMERICHOST | NI_NUMERICSERV);
 if (rc)
  err("getnameinfo: %s", gai_strerror(rc));
 info("connection from %s:%s", host, port);

 return connfd;
}
