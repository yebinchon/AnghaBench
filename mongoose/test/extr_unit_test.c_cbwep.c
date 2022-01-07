
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int data; scalar_t__ size; } ;
struct mg_connection {scalar_t__ user_data; } ;





 int WEBSOCKET_OP_TEXT ;
 int mg_http_send_error (struct mg_connection*,int,char*) ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,char*,int,int ) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void cbwep(struct mg_connection *c, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;
  char *buf = (char *) c->user_data;

  switch (ev) {
    case 128:
      strcat(buf, "R");
      if (buf[0] != '0') {
        mg_http_send_error(c, 403, "I don't like you");
      }
      break;
    case 129:
      strcat(buf, "D");
      break;
    case 130:
      strcat(buf, "F");
      mg_printf_websocket_frame(c, WEBSOCKET_OP_TEXT, "%s|%.*s", buf,
                                (int) wm->size, wm->data);
      break;
  }
}
