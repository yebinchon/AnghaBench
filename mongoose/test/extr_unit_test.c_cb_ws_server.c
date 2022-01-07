
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int data; scalar_t__ size; int flags; } ;
struct mg_connection {int dummy; } ;


 int MG_EV_WEBSOCKET_CONTROL_FRAME ;
 int MG_EV_WEBSOCKET_FRAME ;
 int WEBSOCKET_OP_TEXT ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,char*,int ,int,int ) ;

__attribute__((used)) static void cb_ws_server(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;

  if (ev == MG_EV_WEBSOCKET_FRAME || ev == MG_EV_WEBSOCKET_CONTROL_FRAME) {
    mg_printf_websocket_frame(
        nc, WEBSOCKET_OP_TEXT, "%s%.2x:{%.*s}",
        (ev == MG_EV_WEBSOCKET_CONTROL_FRAME ? "CONTROL:" : ""), wm->flags,
        (int) wm->size, wm->data);
  }
}
