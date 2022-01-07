
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panda_inf_priv {TYPE_1__* tx_context; int free_ctx_cnt; } ;
struct TYPE_2__ {struct panda_inf_priv* priv; int ndx; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int PANDA_CTX_FREE ;
 int PANDA_MAX_TX_URBS ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static inline void panda_init_ctx(struct panda_inf_priv *priv)
{
  int i = 0;

  for (i = 0; i < PANDA_MAX_TX_URBS; i++) {
    priv->tx_context[i].ndx = PANDA_CTX_FREE;
    priv->tx_context[i].priv = priv;
  }

  atomic_set(&priv->free_ctx_cnt, ARRAY_SIZE(priv->tx_context));
}
