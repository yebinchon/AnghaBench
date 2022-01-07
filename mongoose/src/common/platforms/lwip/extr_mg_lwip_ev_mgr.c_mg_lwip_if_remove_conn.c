
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_ev_mgr_lwip_data {TYPE_2__* sig_queue; } ;
struct mg_connection {TYPE_1__* iface; } ;
struct TYPE_4__ {int sig; struct mg_connection* nc; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int MG_SIG_QUEUE_LEN ;
 int MG_SIG_TOMBSTONE ;

void mg_lwip_if_remove_conn(struct mg_connection *nc) {
  struct mg_ev_mgr_lwip_data *md =
      (struct mg_ev_mgr_lwip_data *) nc->iface->data;

  for (int i = 0; i < MG_SIG_QUEUE_LEN; i++) {
    if (md->sig_queue[i].nc == nc) {
      md->sig_queue[i].sig = MG_SIG_TOMBSTONE;
    }
  }
}
