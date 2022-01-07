
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_res {int buf_srv; } ;
struct mbuf {char* buf; int len; } ;
struct mg_connection {int flags; struct mbuf recv_mbuf; TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ user_data; } ;


 int MG_EV_ACCEPT ;
 int MG_EV_CLOSE ;
 int MG_EV_POLL ;
 int MG_EV_RECV ;
 int MG_F_LISTENING ;
 int MG_F_SEND_AND_CLOSE ;
 int mbuf_append (int *,char*,int) ;
 int mbuf_remove (struct mbuf*,int) ;
 int mg_send (struct mg_connection*,char*,int) ;

__attribute__((used)) static void eh3_srv(struct mg_connection *nc, int ev, void *p) {
  struct udp_res *ur = (struct udp_res *) nc->mgr->user_data;
  struct mbuf *io = &nc->recv_mbuf;
  (void) p;

  if (nc->flags & MG_F_LISTENING) {
    if (ev != MG_EV_POLL && ev != MG_EV_CLOSE) {
      mbuf_append(&ur->buf_srv, "BUG", 3);
    }
    return;
  }

  if (ev == MG_EV_ACCEPT) {
    mbuf_append(&ur->buf_srv, "ACCEPT", 6);
  } else if (ev == MG_EV_RECV) {
    mbuf_append(&ur->buf_srv, (nc->flags & MG_F_SEND_AND_CLOSE ? "+" : "-"), 1);
    mbuf_append(&ur->buf_srv, " RECV ", 6);
    mbuf_append(&ur->buf_srv, io->buf, io->len);
    mg_send(nc, io->buf, io->len);
    mbuf_remove(io, io->len);
  } else if (ev == MG_EV_CLOSE) {
    mbuf_append(&ur->buf_srv, " CLOSE", 6);
  }
}
