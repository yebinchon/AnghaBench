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
struct panda_usb_ctx {TYPE_1__* priv; int /*<<< orphan*/  ndx; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  free_ctx_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  PANDA_CTX_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct panda_usb_ctx *ctx)
{
  /* Increase number of free ctxs before freeing ctx */
  FUNC0(&ctx->priv->free_ctx_cnt);

  ctx->ndx = PANDA_CTX_FREE;

  /* Wake up the queue once ctx is marked free */
  FUNC1(ctx->priv->netdev);
}