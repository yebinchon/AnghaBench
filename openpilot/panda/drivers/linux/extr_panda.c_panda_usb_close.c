
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct panda_inf_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_STOPPED ;
 int close_candev (struct net_device*) ;
 struct panda_inf_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int panda_urb_unlink (struct panda_inf_priv*) ;

__attribute__((used)) static int panda_usb_close(struct net_device *netdev)
{
  struct panda_inf_priv *priv = netdev_priv(netdev);

  priv->can.state = CAN_STATE_STOPPED;

  netif_stop_queue(netdev);


  panda_urb_unlink(priv);

  close_candev(netdev);

  return 0;
}
