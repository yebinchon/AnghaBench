
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panda_usb_ctx {scalar_t__ ndx; int dlc; } ;
struct panda_inf_priv {int netdev; int free_ctx_cnt; struct panda_usb_ctx* tx_context; } ;
struct can_frame {int can_dlc; } ;


 scalar_t__ PANDA_CTX_FREE ;
 int PANDA_MAX_TX_URBS ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int netif_stop_queue (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static inline struct panda_usb_ctx *panda_usb_get_free_ctx(struct panda_inf_priv *priv,
        struct can_frame *cf)
{
  int i = 0;
  struct panda_usb_ctx *ctx = ((void*)0);

  for (i = 0; i < PANDA_MAX_TX_URBS; i++) {
    if (priv->tx_context[i].ndx == PANDA_CTX_FREE) {
      ctx = &priv->tx_context[i];
      ctx->ndx = i;
      ctx->dlc = cf->can_dlc;

      atomic_dec(&priv->free_ctx_cnt);
      break;
    }
  }

  printk("CTX num %d\n", atomic_read(&priv->free_ctx_cnt));
  if (!atomic_read(&priv->free_ctx_cnt)){

    printk("SENDING TOO FAST\n");
    netif_stop_queue(priv->netdev);
  }

  return ctx;
}
