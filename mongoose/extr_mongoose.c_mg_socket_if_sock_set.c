
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int sock; } ;
typedef int sock_t ;


 int DBG (char*) ;
 int mg_set_close_on_exec (int ) ;
 int mg_set_non_blocking_mode (int ) ;

void mg_socket_if_sock_set(struct mg_connection *nc, sock_t sock) {
  mg_set_non_blocking_mode(sock);
  mg_set_close_on_exec(sock);
  nc->sock = sock;
  DBG(("%p %d", nc, sock));
}
