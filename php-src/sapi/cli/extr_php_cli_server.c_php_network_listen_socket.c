
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int val ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int php_socket_t ;




 scalar_t__ SOCK_CONN_ERR ;
 int SOCK_EADDRINUSE ;
 int SOCK_EINVAL ;
 int SOCK_ERR ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 scalar_t__ ZEND_VALID_SOCKET (int) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int closesocket (int) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 void* htons (int) ;
 scalar_t__ listen (int,int ) ;
 int ntohs (void*) ;
 int pefree (struct sockaddr*,int) ;
 struct sockaddr* pemalloc (int,int) ;
 int php_cli_server_workers_max ;
 int php_network_freeaddresses (struct sockaddr**) ;
 int php_network_getaddresses (char const*,int,struct sockaddr***,int **) ;
 int php_socket_errno () ;
 int * php_socket_error_str (int) ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int,int,int ) ;

__attribute__((used)) static php_socket_t php_network_listen_socket(const char *host, int *port, int socktype, int *af, socklen_t *socklen, zend_string **errstr)
{
 php_socket_t retval = SOCK_ERR;
 int err = 0;
 struct sockaddr *sa = ((void*)0), **p, **sal;

 int num_addrs = php_network_getaddresses(host, socktype, &sal, errstr);
 if (num_addrs == 0) {
  return -1;
 }
 for (p = sal; *p; p++) {
  if (sa) {
   pefree(sa, 1);
   sa = ((void*)0);
  }

  retval = socket((*p)->sa_family, socktype, 0);
  if (retval == SOCK_ERR) {
   continue;
  }

  switch ((*p)->sa_family) {
  case 129:
   sa = pemalloc(sizeof(struct sockaddr_in), 1);
   *(struct sockaddr_in *)sa = *(struct sockaddr_in *)*p;
   ((struct sockaddr_in *)sa)->sin_port = htons(*port);
   *socklen = sizeof(struct sockaddr_in);
   break;
  default:

   *socklen = 0;
   closesocket(retval);
   continue;
  }
  if (bind(retval, sa, *socklen) == SOCK_CONN_ERR) {
   err = php_socket_errno();
   if (err == SOCK_EINVAL || err == SOCK_EADDRINUSE) {
    goto out;
   }
   closesocket(retval);
   retval = SOCK_ERR;
   continue;
  }
  err = 0;

  *af = sa->sa_family;
  if (*port == 0) {
   if (getsockname(retval, sa, socklen)) {
    err = php_socket_errno();
    goto out;
   }
   switch (sa->sa_family) {





   case 129:
    *port = ntohs(((struct sockaddr_in *)sa)->sin_port);
    break;
   }
  }

  break;
 }

 if (retval == SOCK_ERR) {
  goto out;
 }

 if (listen(retval, SOMAXCONN)) {
  err = php_socket_errno();
  goto out;
 }

out:
 if (sa) {
  pefree(sa, 1);
 }
 if (sal) {
  php_network_freeaddresses(sal);
 }
 if (err) {
  if (ZEND_VALID_SOCKET(retval)) {
   closesocket(retval);
  }
  if (errstr) {
   *errstr = php_socket_error_str(err);
  }
  return SOCK_ERR;
 }
 return retval;
}
