
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; } ;


 int mbuf_remove (TYPE_1__*,int ) ;
 int mg_send (struct mg_connection*,int ,int ) ;

void mg_forward(struct mg_connection *from, struct mg_connection *to) {
  mg_send(to, from->recv_mbuf.buf, from->recv_mbuf.len);
  mbuf_remove(&from->recv_mbuf, from->recv_mbuf.len);
}
