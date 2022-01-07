
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; } ;
struct sockaddr_in {int sin_family; void* sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int sockoptval ;
typedef int socklen_t ;
typedef int php_socket_t ;




 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int SOCK_CONN_ERR ;
 int SOCK_ERR ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 long STREAM_SOCKOP_IPV6_V6ONLY ;
 long STREAM_SOCKOP_IPV6_V6ONLY_ENABLED ;
 long STREAM_SOCKOP_SO_BROADCAST ;
 long STREAM_SOCKOP_SO_REUSEPORT ;
 long STREAM_SOCKOP_TCP_NODELAY ;
 int TCP_NODELAY ;
 int bind (int,struct sockaddr*,int) ;
 int closesocket (int) ;
 void* htons (unsigned int) ;
 int php_network_freeaddresses (struct sockaddr**) ;
 int php_network_getaddresses (char const*,int,struct sockaddr***,int **) ;
 int php_socket_errno () ;
 int * php_socket_error_str (int) ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int,int,int ) ;

php_socket_t php_network_bind_socket_to_local_addr(const char *host, unsigned port,
  int socktype, long sockopts, zend_string **error_string, int *error_code
  )
{
 int num_addrs, n, err = 0;
 php_socket_t sock;
 struct sockaddr **sal, **psal, *sa;
 socklen_t socklen;
 int sockoptval = 1;

 num_addrs = php_network_getaddresses(host, socktype, &psal, error_string);

 if (num_addrs == 0) {

  return -1;
 }

 for (sal = psal; *sal != ((void*)0); sal++) {
  sa = *sal;


  sock = socket(sa->sa_family, socktype, 0);

  if (sock == SOCK_ERR) {
   continue;
  }

  switch (sa->sa_family) {







   case 129:
    ((struct sockaddr_in *)sa)->sin_family = sa->sa_family;
    ((struct sockaddr_in *)sa)->sin_port = htons(port);
    socklen = sizeof(struct sockaddr_in);
    break;
   default:

    socklen = 0;
    sa = ((void*)0);
  }

  if (sa) {
   n = bind(sock, sa, socklen);

   if (n != SOCK_CONN_ERR) {
    goto bound;
   }

   err = php_socket_errno();
  }

  closesocket(sock);
 }
 sock = -1;

 if (error_code) {
  *error_code = err;
 }
 if (error_string) {
  *error_string = php_socket_error_str(err);
 }

bound:

 php_network_freeaddresses(psal);

 return sock;

}
