
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct mg_connection {TYPE_2__* mgr; TYPE_1__ recv_mbuf; } ;
struct TYPE_4__ {scalar_t__ user_data; } ;


 int MG_EV_CLOSE ;

__attribute__((used)) static void ehb_srv2(struct mg_connection *c, int ev, void *p) {
  if (ev == MG_EV_CLOSE) {
    if (c->recv_mbuf.size == 1) (*(int *) c->mgr->user_data) = 1;
    (void) p;
  }
}
