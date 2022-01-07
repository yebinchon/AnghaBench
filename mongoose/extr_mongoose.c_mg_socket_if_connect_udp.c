
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {scalar_t__ sock; int err; int flags; } ;
typedef int optval ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int MG_F_ENABLE_BROADCAST ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int mg_get_errno () ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,char const*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

void mg_socket_if_connect_udp(struct mg_connection *nc) {
  nc->sock = socket(AF_INET, SOCK_DGRAM, 0);
  if (nc->sock == INVALID_SOCKET) {
    nc->err = mg_get_errno() ? mg_get_errno() : 1;
    return;
  }
  if (nc->flags & MG_F_ENABLE_BROADCAST) {
    int optval = 1;
    if (setsockopt(nc->sock, SOL_SOCKET, SO_BROADCAST, (const char *) &optval,
                   sizeof(optval)) < 0) {
      nc->err = mg_get_errno() ? mg_get_errno() : 1;
      return;
    }
  }
  nc->err = 0;
}
