
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct mg_connection {TYPE_1__* mgr; struct mbuf recv_mbuf; } ;
struct TYPE_2__ {scalar_t__ user_data; } ;


 int MG_EV_RECV ;
 int mbuf_remove (struct mbuf*,int) ;

__attribute__((used)) static void ehb_srv(struct mg_connection *nc, int ev, void *p) {
  struct mbuf *io = &nc->recv_mbuf;
  (void) io;
  (void) p;

  if (ev == MG_EV_RECV) {
    if (*(int *) p == 1) (*(int *) nc->mgr->user_data)++;
    mbuf_remove(io, *(int *) p);
  }
}
