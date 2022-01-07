
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_do_recv (struct mg_connection*) ;

void mg_if_can_recv_cb(struct mg_connection *nc) {
  mg_do_recv(nc);
}
