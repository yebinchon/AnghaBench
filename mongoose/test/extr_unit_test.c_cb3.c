
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int size; int data; } ;
struct mg_connection {int dummy; } ;


 int DBG (char*) ;
 int MG_EV_WEBSOCKET_FRAME ;
 int WEBSOCKET_OP_TEXT ;
 int memcmp (int ,char*,int) ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,char const*) ;

__attribute__((used)) static void cb3(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;
  if (ev != MG_EV_WEBSOCKET_FRAME) return;
  DBG(("server data '%.*s'", (int) wm->size, wm->data));
  const char *reply = wm->size == 2 && !memcmp(wm->data, "hi", 2) ? "A" : "B";
  mg_printf_websocket_frame(nc, WEBSOCKET_OP_TEXT, "%s", reply);
}
