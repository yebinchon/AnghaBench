
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; } ;


 int MG_F_SEND_AND_CLOSE ;
 int WEBSOCKET_OP_CLOSE ;
 int mg_send_websocket_frame (struct mg_connection*,int ,void const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void mg_ws_close(struct mg_connection *nc, const void *data,
                        size_t len) {
  if ((int) len == ~0) {
    len = strlen((const char *) data);
  }
  mg_send_websocket_frame(nc, WEBSOCKET_OP_CLOSE, data, len);
  nc->flags |= MG_F_SEND_AND_CLOSE;
}
