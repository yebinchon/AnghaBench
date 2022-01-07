
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws_mask_ctx {int dummy; } ;
struct mg_connection {int flags; int send_mbuf; } ;


 int DBG (char*) ;
 int MG_F_SEND_AND_CLOSE ;
 int WEBSOCKET_OP_CLOSE ;
 int mg_send (struct mg_connection*,void const*,size_t) ;
 int mg_send_ws_header (struct mg_connection*,int,size_t,struct ws_mask_ctx*) ;
 int mg_ws_mask_frame (int *,struct ws_mask_ctx*) ;

void mg_send_websocket_frame(struct mg_connection *nc, int op, const void *data,
                             size_t len) {
  struct ws_mask_ctx ctx;
  DBG(("%p %d %d", nc, op, (int) len));
  mg_send_ws_header(nc, op, len, &ctx);
  mg_send(nc, data, len);

  mg_ws_mask_frame(&nc->send_mbuf, &ctx);

  if (op == WEBSOCKET_OP_CLOSE) {
    nc->flags |= MG_F_SEND_AND_CLOSE;
  }
}
