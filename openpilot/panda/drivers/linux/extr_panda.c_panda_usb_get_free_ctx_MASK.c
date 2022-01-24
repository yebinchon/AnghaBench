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
struct panda_usb_ctx {scalar_t__ ndx; int /*<<< orphan*/  dlc; } ;
struct panda_inf_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  free_ctx_cnt; struct panda_usb_ctx* tx_context; } ;
struct can_frame {int /*<<< orphan*/  can_dlc; } ;

/* Variables and functions */
 scalar_t__ PANDA_CTX_FREE ; 
 int PANDA_MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static inline struct panda_usb_ctx *FUNC4(struct panda_inf_priv *priv,
							 struct can_frame *cf)
{
  int i = 0;
  struct panda_usb_ctx *ctx = NULL;

  for (i = 0; i < PANDA_MAX_TX_URBS; i++) {
    if (priv->tx_context[i].ndx == PANDA_CTX_FREE) {
      ctx = &priv->tx_context[i];
      ctx->ndx = i;
      ctx->dlc = cf->can_dlc;

      FUNC0(&priv->free_ctx_cnt);
      break;
    }
  }

  FUNC3("CTX num %d\n", FUNC1(&priv->free_ctx_cnt));
  if (!FUNC1(&priv->free_ctx_cnt)){
    /* That was the last free ctx. Slow down tx path */
    FUNC3("SENDING TOO FAST\n");
    FUNC2(priv->netdev);
  }

  return ctx;
}