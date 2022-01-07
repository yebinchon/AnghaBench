
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; int sock; } ;


 int MG_F_SEND_AND_CLOSE ;
 scalar_t__ MG_RECV_FUNC (int ,void*,size_t,int ) ;
 int mg_is_error () ;

__attribute__((used)) static int mg_socket_if_tcp_recv(struct mg_connection *nc, void *buf,
                                 size_t len) {
  int n = (int) MG_RECV_FUNC(nc->sock, buf, len, 0);
  if (n == 0) {

    nc->flags |= MG_F_SEND_AND_CLOSE;
  } else if (n < 0 && !mg_is_error()) {
    n = 0;
  }
  return n;
}
