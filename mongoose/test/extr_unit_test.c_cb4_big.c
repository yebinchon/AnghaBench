
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int size; int data; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct big_payload_params {int size; int buf; } ;


 int MG_EV_WEBSOCKET_FRAME ;
 int MG_EV_WEBSOCKET_HANDSHAKE_DONE ;
 int WEBSOCKET_OP_CLOSE ;
 int WEBSOCKET_OP_TEXT ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (char*,char,int ) ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,int ,char*) ;
 int mg_send_websocket_frame (struct mg_connection*,int ,int *,int ) ;

__attribute__((used)) static void cb4_big(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;
  struct big_payload_params *params =
      (struct big_payload_params *) nc->user_data;

  if (ev == MG_EV_WEBSOCKET_FRAME) {
    memcpy(params->buf, wm->data, wm->size);
    mg_send_websocket_frame(nc, WEBSOCKET_OP_CLOSE, ((void*)0), 0);
  } else if (ev == MG_EV_WEBSOCKET_HANDSHAKE_DONE) {

    char *payload = (char *) malloc(params->size);
    memset(payload, 'x', params->size);
    mg_printf_websocket_frame(nc, WEBSOCKET_OP_TEXT, "%.*s", params->size,
                              payload);
    free(payload);
  }
}
