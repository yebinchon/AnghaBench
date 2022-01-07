
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int flags; } ;
struct mg_connection {int user_data; int handler; } ;


 int MG_EV_WEBSOCKET_CONTROL_FRAME ;
 int MG_EV_WEBSOCKET_FRAME ;
 int mg_call (struct mg_connection*,int ,int ,int ,struct websocket_message*) ;

__attribute__((used)) static void mg_handle_incoming_websocket_frame(struct mg_connection *nc,
                                               struct websocket_message *wsm) {
  if (wsm->flags & 0x8) {
    mg_call(nc, nc->handler, nc->user_data, MG_EV_WEBSOCKET_CONTROL_FRAME, wsm);
  } else {
    mg_call(nc, nc->handler, nc->user_data, MG_EV_WEBSOCKET_FRAME, wsm);
  }
}
