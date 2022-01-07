
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_mgr {TYPE_1__** ifaces; } ;
struct mg_lwip_conn_state {int recv_pending; int err; } ;
struct mg_ev_mgr_lwip_data {scalar_t__ sig_queue_len; int start_index; TYPE_2__* sig_queue; } ;
struct mg_connection {int recv_mbuf; int * mgr; int * iface; scalar_t__ sock; } ;
struct TYPE_4__ {int sig; struct mg_connection* nc; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 size_t MG_MAIN_IFACE ;



 int MG_SIG_QUEUE_LEN ;


 int mbuf_trim (int *) ;
 int mg_close_conn (struct mg_connection*) ;
 int mg_if_can_recv_cb (struct mg_connection*) ;
 int mg_if_connect_cb (struct mg_connection*,int ) ;
 int mg_lwip_handle_accept (struct mg_connection*) ;
 int mgos_lock () ;
 int mgos_unlock () ;

void mg_ev_mgr_lwip_process_signals(struct mg_mgr *mgr) {
  struct mg_ev_mgr_lwip_data *md =
      (struct mg_ev_mgr_lwip_data *) mgr->ifaces[MG_MAIN_IFACE]->data;
  while (md->sig_queue_len > 0) {
    mgos_lock();
    int i = md->start_index;
    int sig = md->sig_queue[i].sig;
    struct mg_connection *nc = md->sig_queue[i].nc;
    struct mg_lwip_conn_state *cs = (struct mg_lwip_conn_state *) nc->sock;
    md->start_index = (i + 1) % MG_SIG_QUEUE_LEN;
    md->sig_queue_len--;
    mgos_unlock();
    if (nc->iface == ((void*)0) || nc->mgr == ((void*)0)) continue;
    switch (sig) {
      case 130: {
        mg_if_connect_cb(nc, cs->err);
        break;
      }
      case 131: {
        mg_close_conn(nc);
        break;
      }
      case 129: {
        cs->recv_pending = 0;
        mg_if_can_recv_cb(nc);
        mbuf_trim(&nc->recv_mbuf);
        break;
      }
      case 128: {
        break;
      }
      case 132: {
        mg_lwip_handle_accept(nc);
        break;
      }
    }
  }
}
