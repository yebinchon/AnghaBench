
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panda_usb_ctx {TYPE_1__* priv; int ndx; } ;
struct TYPE_2__ {int netdev; int free_ctx_cnt; } ;


 int PANDA_CTX_FREE ;
 int atomic_inc (int *) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static inline void panda_usb_free_ctx(struct panda_usb_ctx *ctx)
{

  atomic_inc(&ctx->priv->free_ctx_cnt);

  ctx->ndx = PANDA_CTX_FREE;


  netif_wake_queue(ctx->priv->netdev);
}
