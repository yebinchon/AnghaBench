
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int len; int buf; } ;
struct mg_connection {struct mbuf recv_mbuf; } ;



 int mbuf_remove (struct mbuf*,int ) ;
 int mg_send (struct mg_connection*,int ,int ) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;

  switch (ev) {
    case 128:
      mg_send(nc, io->buf, io->len);
      mbuf_remove(io, io->len);
      break;
    default:
      break;
  }
}
