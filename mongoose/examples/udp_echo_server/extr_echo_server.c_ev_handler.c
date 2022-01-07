
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int len; int buf; } ;
struct mg_connection {int flags; struct mbuf recv_mbuf; } ;



 int MG_F_SEND_AND_CLOSE ;
 int mbuf_remove (struct mbuf*,int ) ;
 int mg_send (struct mg_connection*,int ,int ) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;
  switch (ev) {
    case 128:
      mg_send(nc, io->buf, io->len);
      mbuf_remove(io, io->len);






      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    default:
      break;
  }
}
