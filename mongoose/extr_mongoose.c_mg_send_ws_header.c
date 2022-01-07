
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int tmp ;
struct ws_mask_ctx {unsigned char mask; scalar_t__ pos; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {TYPE_1__ send_mbuf; int * listener; } ;


 int FLAGS_MASK_FIN ;
 int FLAGS_MASK_OP ;
 int WEBSOCKET_DONT_FIN ;
 int htonl (int ) ;
 int htons (int ) ;
 int memcpy (unsigned char*,int *,int) ;
 int mg_send (struct mg_connection*,unsigned char*,int) ;
 unsigned char mg_ws_random_mask () ;

__attribute__((used)) static void mg_send_ws_header(struct mg_connection *nc, int op, size_t len,
                              struct ws_mask_ctx *ctx) {
  int header_len;
  unsigned char header[10];

  header[0] =
      (op & WEBSOCKET_DONT_FIN ? 0x0 : FLAGS_MASK_FIN) | (op & FLAGS_MASK_OP);
  if (len < 126) {
    header[1] = (unsigned char) len;
    header_len = 2;
  } else if (len < 65535) {
    uint16_t tmp = htons((uint16_t) len);
    header[1] = 126;
    memcpy(&header[2], &tmp, sizeof(tmp));
    header_len = 4;
  } else {
    uint32_t tmp;
    header[1] = 127;
    tmp = htonl((uint32_t)((uint64_t) len >> 32));
    memcpy(&header[2], &tmp, sizeof(tmp));
    tmp = htonl((uint32_t)(len & 0xffffffff));
    memcpy(&header[6], &tmp, sizeof(tmp));
    header_len = 10;
  }


  if (nc->listener == ((void*)0)) {
    header[1] |= 1 << 7;
    mg_send(nc, header, header_len);
    ctx->mask = mg_ws_random_mask();
    mg_send(nc, &ctx->mask, sizeof(ctx->mask));
    ctx->pos = nc->send_mbuf.len;
  } else {
    mg_send(nc, header, header_len);
    ctx->pos = 0;
  }
}
