
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef size_t socklen_t ;
struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ php_netstream_data_t ;


 size_t INT_MAX ;
 int SOCK_CONN_ERR ;
 int XP_SOCK_BUF_SIZE (size_t) ;
 int send (int ,char const*,size_t,int) ;
 int sendto (int ,char const*,int ,int,struct sockaddr*,int ) ;

__attribute__((used)) static inline int sock_sendto(php_netstream_data_t *sock, const char *buf, size_t buflen, int flags,
  struct sockaddr *addr, socklen_t addrlen
  )
{
 int ret;
 if (addr) {
  ret = sendto(sock->socket, buf, XP_SOCK_BUF_SIZE(buflen), flags, addr, XP_SOCK_BUF_SIZE(addrlen));

  return (ret == SOCK_CONN_ERR) ? -1 : ret;
 }



 return ((ret = send(sock->socket, buf, buflen, flags)) == SOCK_CONN_ERR) ? -1 : ret;

}
