
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {int flags; int user_data; TYPE_1__ send_mbuf; } ;


 int MG_EV_POLL ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_CONNECTING ;
 int MG_F_LISTENING ;
 int MG_F_RECV_AND_CLOSE ;
 int MG_F_SEND_AND_CLOSE ;
 int MG_F_SSL ;
 int MG_F_WANT_READ ;
 int MG_F_WANT_WRITE ;
 int MG_TCP_IO_SIZE ;
 int mg_call (struct mg_connection*,int *,int ,int ,int *) ;
 int mg_close_conn (struct mg_connection*) ;
 int mg_do_recv (struct mg_connection*) ;
 int mg_timer (struct mg_connection*,double) ;
 scalar_t__ recv_avail_size (struct mg_connection*,int ) ;

int mg_if_poll(struct mg_connection *nc, double now) {
  if (nc->flags & MG_F_CLOSE_IMMEDIATELY) {
    mg_close_conn(nc);
    return 0;
  } else if (nc->flags & MG_F_SEND_AND_CLOSE) {
    if (nc->send_mbuf.len == 0) {
      nc->flags |= MG_F_CLOSE_IMMEDIATELY;
      mg_close_conn(nc);
      return 0;
    }
  } else if (nc->flags & MG_F_RECV_AND_CLOSE) {
    mg_close_conn(nc);
    return 0;
  }
  mg_timer(nc, now);
  {
    time_t now_t = (time_t) now;
    mg_call(nc, ((void*)0), nc->user_data, MG_EV_POLL, &now_t);
  }
  return 1;
}
