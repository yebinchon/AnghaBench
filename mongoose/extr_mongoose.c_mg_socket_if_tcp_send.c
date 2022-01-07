
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int sock; } ;


 scalar_t__ MG_SEND_FUNC (int ,void const*,size_t,int ) ;
 int mg_is_error () ;

__attribute__((used)) static int mg_socket_if_tcp_send(struct mg_connection *nc, const void *buf,
                                 size_t len) {
  int n = (int) MG_SEND_FUNC(nc->sock, buf, len, 0);
  if (n < 0 && !mg_is_error()) n = 0;
  return n;
}
