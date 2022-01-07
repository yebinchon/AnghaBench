
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ag71xx {int lock; scalar_t__ link; int phy_dev; } ;


 int ag71xx_hw_disable (struct ag71xx*) ;
 int ag71xx_link_adjust (struct ag71xx*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int phy_stop (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ag71xx_stop(struct net_device *dev)
{
 unsigned long flags;
 struct ag71xx *ag = netdev_priv(dev);

 netif_carrier_off(dev);
 phy_stop(ag->phy_dev);

 spin_lock_irqsave(&ag->lock, flags);
 if (ag->link) {
  ag->link = 0;
  ag71xx_link_adjust(ag);
 }
 spin_unlock_irqrestore(&ag->lock, flags);

 ag71xx_hw_disable(ag);

 return 0;
}
