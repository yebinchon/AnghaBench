#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ws_mask_ctx {int dummy; } ;
struct mg_connection {int /*<<< orphan*/  flags; int /*<<< orphan*/  send_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int WEBSOCKET_OP_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int,size_t,struct ws_mask_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ws_mask_ctx*) ; 

void FUNC4(struct mg_connection *nc, int op, const void *data,
                             size_t len) {
  struct ws_mask_ctx ctx;
  FUNC0(("%p %d %d", nc, op, (int) len));
  FUNC2(nc, op, len, &ctx);
  FUNC1(nc, data, len);

  FUNC3(&nc->send_mbuf, &ctx);

  if (op == WEBSOCKET_OP_CLOSE) {
    nc->flags |= MG_F_SEND_AND_CLOSE;
  }
}