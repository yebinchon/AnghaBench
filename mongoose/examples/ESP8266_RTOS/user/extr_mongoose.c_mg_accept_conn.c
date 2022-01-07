
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin_port; int sin_addr; } ;
union socket_address {TYPE_1__ sin; int sa; } ;
struct mg_connection {int sock; } ;
typedef int socklen_t ;
typedef scalar_t__ sock_t ;
typedef int sa ;


 int DBG (char*) ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ accept (int ,int *,int*) ;
 int closesocket (scalar_t__) ;
 int inet_ntoa (int ) ;
 int mg_get_errno () ;
 struct mg_connection* mg_if_accept_new_conn (struct mg_connection*) ;
 int mg_if_accept_tcp_cb (struct mg_connection*,union socket_address*,int) ;
 scalar_t__ mg_is_error () ;
 int mg_sock_set (struct mg_connection*,scalar_t__) ;
 int ntohs (int ) ;

__attribute__((used)) static int mg_accept_conn(struct mg_connection *lc) {
  struct mg_connection *nc;
  union socket_address sa;
  socklen_t sa_len = sizeof(sa);

  sock_t sock = accept(lc->sock, &sa.sa, &sa_len);
  if (sock == INVALID_SOCKET) {
    if (mg_is_error()) {
      DBG(("%p: failed to accept: %d", lc, mg_get_errno()));
    }
    return 0;
  }
  nc = mg_if_accept_new_conn(lc);
  if (nc == ((void*)0)) {
    closesocket(sock);
    return 0;
  }
  DBG(("%p conn from %s:%d", nc, inet_ntoa(sa.sin.sin_addr),
       ntohs(sa.sin.sin_port)));
  mg_sock_set(nc, sock);
  mg_if_accept_tcp_cb(nc, &sa, sa_len);
  return 1;
}
