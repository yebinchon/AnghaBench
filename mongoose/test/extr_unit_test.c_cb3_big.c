
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {size_t size; char* data; } ;
struct mg_connection {int dummy; } ;


 int MG_EV_WEBSOCKET_FRAME ;
 int WEBSOCKET_OP_TEXT ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,char*) ;

__attribute__((used)) static void cb3_big(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;

  if (ev == MG_EV_WEBSOCKET_FRAME) {
    int success = 1;
    size_t i;
    for (i = 0; i < wm->size; i++) {
      if (wm->data[i] != 'x') {
        success = 0;
        break;
      }
    }
    mg_printf_websocket_frame(nc, WEBSOCKET_OP_TEXT, "%s",
                              success ? "success" : "fail");
  }
}
