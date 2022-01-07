
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ duplex; scalar_t__ speed; } ;
struct net_device {int dummy; } ;
struct ag71xx {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; int lock; struct phy_device* phy_dev; } ;


 int ag71xx_link_adjust (struct ag71xx*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ag71xx_phy_link_adjust(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);
 struct phy_device *phydev = ag->phy_dev;
 unsigned long flags;
 int status_change = 0;

 spin_lock_irqsave(&ag->lock, flags);

 if (phydev->link) {
  if (ag->duplex != phydev->duplex
      || ag->speed != phydev->speed) {
   status_change = 1;
  }
 }

 if (phydev->link != ag->link)
  status_change = 1;

 ag->link = phydev->link;
 ag->duplex = phydev->duplex;
 ag->speed = phydev->speed;

 if (status_change)
  ag71xx_link_adjust(ag);

 spin_unlock_irqrestore(&ag->lock, flags);
}
