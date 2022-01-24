#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  tmp ;
struct ws_mask_ctx {unsigned char mask; scalar_t__ pos; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mg_connection {TYPE_1__ send_mbuf; int /*<<< orphan*/ * listener; } ;

/* Variables and functions */
 int FLAGS_MASK_FIN ; 
 int FLAGS_MASK_OP ; 
 int WEBSOCKET_DONT_FIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,unsigned char*,int) ; 
 unsigned char FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, int op, size_t len,
                              struct ws_mask_ctx *ctx) {
  int header_len;
  unsigned char header[10];

  header[0] =
      (op & WEBSOCKET_DONT_FIN ? 0x0 : FLAGS_MASK_FIN) | (op & FLAGS_MASK_OP);
  if (len < 126) {
    header[1] = (unsigned char) len;
    header_len = 2;
  } else if (len < 65535) {
    uint16_t tmp = FUNC1((uint16_t) len);
    header[1] = 126;
    FUNC2(&header[2], &tmp, sizeof(tmp));
    header_len = 4;
  } else {
    uint32_t tmp;
    header[1] = 127;
    tmp = FUNC0((uint32_t)((uint64_t) len >> 32));
    FUNC2(&header[2], &tmp, sizeof(tmp));
    tmp = FUNC0((uint32_t)(len & 0xffffffff));
    FUNC2(&header[6], &tmp, sizeof(tmp));
    header_len = 10;
  }

  /* client connections enable masking */
  if (nc->listener == NULL) {
    header[1] |= 1 << 7; /* set masking flag */
    FUNC3(nc, header, header_len);
    ctx->mask = FUNC4();
    FUNC3(nc, &ctx->mask, sizeof(ctx->mask));
    ctx->pos = nc->send_mbuf.len;
  } else {
    FUNC3(nc, header, header_len);
    ctx->pos = 0;
  }
}