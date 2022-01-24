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
struct panda_inf_priv {TYPE_1__* tx_context; int /*<<< orphan*/  free_ctx_cnt; } ;
struct TYPE_2__ {struct panda_inf_priv* priv; int /*<<< orphan*/  ndx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PANDA_CTX_FREE ; 
 int PANDA_MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct panda_inf_priv *priv)
{
  int i = 0;

  for (i = 0; i < PANDA_MAX_TX_URBS; i++) {
    priv->tx_context[i].ndx = PANDA_CTX_FREE;
    priv->tx_context[i].priv = priv;
  }

  FUNC1(&priv->free_ctx_cnt, FUNC0(priv->tx_context));
}