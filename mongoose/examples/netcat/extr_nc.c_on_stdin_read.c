
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {int flags; TYPE_1__ send_mbuf; } ;


 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_SEND_AND_CLOSE ;
 int WEBSOCKET_OP_TEXT ;
 int mg_send (struct mg_connection*,unsigned char*,int) ;
 int mg_send_websocket_frame (struct mg_connection*,int ,unsigned char*,int) ;
 scalar_t__ s_is_websocket ;

__attribute__((used)) static void on_stdin_read(struct mg_connection *nc, int ev, void *p) {
  int ch = *(int *) p;

  (void) ev;

  if (ch < 0) {

    nc->flags |= MG_F_SEND_AND_CLOSE;
    if (nc->send_mbuf.len <= 0) {
      nc->flags |= MG_F_CLOSE_IMMEDIATELY;
    }
  } else {

    unsigned char c = (unsigned char) ch;
    if (s_is_websocket) {
      mg_send_websocket_frame(nc, WEBSOCKET_OP_TEXT, &c, 1);
    } else {
      mg_send(nc, &c, 1);
    }
  }
}
