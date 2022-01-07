
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct panda_inf_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 struct panda_inf_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;

__attribute__((used)) static int panda_usb_open(struct net_device *netdev)
{
  struct panda_inf_priv *priv = netdev_priv(netdev);
  int err;


  err = open_candev(netdev);
  if (err)
    return err;


  priv->can.state = CAN_STATE_ERROR_ACTIVE;

  netif_start_queue(netdev);

  return 0;
}
