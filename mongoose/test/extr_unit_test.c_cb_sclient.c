
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_data {int dummy; } ;
struct mg_connection {int flags; scalar_t__ user_data; } ;




 int MG_F_SEND_AND_CLOSE ;
 int check_sent (struct simple_data*,struct mg_connection*,void*) ;
 int count_events (struct simple_data*,int) ;
 int do_recv (struct simple_data*,struct mg_connection*,void*) ;
 int do_send (struct simple_data*,struct mg_connection*) ;

__attribute__((used)) static void cb_sclient(struct mg_connection *nc, int ev, void *ev_data) {
  struct simple_data *d = (struct simple_data *) nc->user_data;
  count_events(d, ev);
  switch (ev) {
    case 129: {
      do_recv(d, nc, ev_data);
      do_send(d, nc);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    }
    case 128: {
      check_sent(d, nc, ev_data);
      break;
    }
  }
}
