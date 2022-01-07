
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct mg_connection {int send_mbuf; scalar_t__ last_io_time; } ;


 int mbuf_append (int *,void const*,int) ;
 scalar_t__ mg_time () ;

void mg_send(struct mg_connection *nc, const void *buf, int len) {
  nc->last_io_time = (time_t) mg_time();
  mbuf_append(&nc->send_mbuf, buf, len);
}
