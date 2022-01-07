
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sa ;
typedef int php_sockaddr_storage ;
struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ php_netstream_data_t ;


 int SOCK_CONN_ERR ;
 int XP_SOCK_BUF_SIZE (size_t) ;
 int * ZSTR_EMPTY_ALLOC () ;
 int php_network_populate_name_from_sockaddr (struct sockaddr*,int,int **,struct sockaddr**,int*) ;
 int recv (int ,char*,int ,int) ;
 int recvfrom (int ,char*,int ,int,struct sockaddr*,int*) ;

__attribute__((used)) static inline int sock_recvfrom(php_netstream_data_t *sock, char *buf, size_t buflen, int flags,
  zend_string **textaddr,
  struct sockaddr **addr, socklen_t *addrlen
  )
{
 int ret;
 int want_addr = textaddr || addr;

 if (want_addr) {
  php_sockaddr_storage sa;
  socklen_t sl = sizeof(sa);
  ret = recvfrom(sock->socket, buf, XP_SOCK_BUF_SIZE(buflen), flags, (struct sockaddr*)&sa, &sl);
  ret = (ret == SOCK_CONN_ERR) ? -1 : ret;
  if (sl) {
   php_network_populate_name_from_sockaddr((struct sockaddr*)&sa, sl,
     textaddr, addr, addrlen);
  } else {
   if (textaddr) {
    *textaddr = ZSTR_EMPTY_ALLOC();
   }
   if (addr) {
    *addr = ((void*)0);
    *addrlen = 0;
   }
  }
 } else {
  ret = recv(sock->socket, buf, XP_SOCK_BUF_SIZE(buflen), flags);
  ret = (ret == SOCK_CONN_ERR) ? -1 : ret;
 }

 return ret;
}
