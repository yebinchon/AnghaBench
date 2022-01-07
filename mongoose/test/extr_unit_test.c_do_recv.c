
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simple_data {int data_rcvd; int fail; int to_send; } ;
struct TYPE_2__ {scalar_t__ len; int buf; } ;
struct mg_connection {TYPE_1__ recv_mbuf; } ;


 int mbuf_remove (TYPE_1__*,scalar_t__) ;
 int sprintf (char*,char*,int,int) ;
 int strcat (int ,char*) ;
 scalar_t__ strlen (int ) ;
 int strncat (int ,int ,scalar_t__) ;

__attribute__((used)) static void do_recv(struct simple_data *d, struct mg_connection *nc,
                    void *ev_data) {
  if (*((int *) ev_data) != (int) nc->recv_mbuf.len) {
    char msg[100];
    sprintf(msg, "(num recv wrong: %d vs %d)", *((int *) ev_data),
            (int) strlen(d->to_send));
    strcat(d->fail, msg);
    return;
  }
  strncat(d->data_rcvd, nc->recv_mbuf.buf, nc->recv_mbuf.len);
  mbuf_remove(&nc->recv_mbuf, nc->recv_mbuf.len);
}
