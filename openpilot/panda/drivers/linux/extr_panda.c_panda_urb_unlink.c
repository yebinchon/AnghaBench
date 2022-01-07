
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panda_inf_priv {int tx_submitted; TYPE_1__* priv_dev; } ;
struct TYPE_2__ {int rx_submitted; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void panda_urb_unlink(struct panda_inf_priv *priv)
{
  usb_kill_anchored_urbs(&priv->priv_dev->rx_submitted);
  usb_kill_anchored_urbs(&priv->tx_submitted);
}
