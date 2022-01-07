
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {scalar_t__ size; int data; } ;
struct mg_str {char* p; int len; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct http_message {int resp_code; } ;


 int DBG (char*) ;
 int MG_EV_WEBSOCKET_FRAME ;
 int MG_EV_WEBSOCKET_HANDSHAKE_DONE ;
 int WEBSOCKET_OP_CLOSE ;
 int WEBSOCKET_OP_TEXT ;
 int memcpy (char*,int ,scalar_t__) ;
 int mg_send_websocket_frame (struct mg_connection*,int ,int *,int ) ;
 int mg_send_websocket_framev (struct mg_connection*,int ,struct mg_str*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void cb4(struct mg_connection *nc, int ev, void *ev_data) {
  char *buf = (char *) nc->user_data;
  if (ev == MG_EV_WEBSOCKET_FRAME) {
    struct websocket_message *wm = (struct websocket_message *) ev_data;
    DBG(("client data '%.*s'", (int) wm->size, wm->data));
    memcpy(buf, wm->data, wm->size);
    mg_send_websocket_frame(nc, WEBSOCKET_OP_CLOSE, ((void*)0), 0);
  } else if (ev == MG_EV_WEBSOCKET_HANDSHAKE_DONE) {
    struct http_message *hm = (struct http_message *) ev_data;
    DBG(("code %d", hm->resp_code));
    if (hm->resp_code == 101) {

      struct mg_str h[2];
      h[0].p = "h";
      h[0].len = 1;
      h[1].p = "i";
      h[1].len = 1;
      mg_send_websocket_framev(nc, WEBSOCKET_OP_TEXT, h, 2);
    } else {
      snprintf(buf, 20, "code %d", hm->resp_code);
    }
  }
}
