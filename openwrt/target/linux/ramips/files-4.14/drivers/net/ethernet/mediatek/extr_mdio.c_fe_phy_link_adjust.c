
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {scalar_t__ link; scalar_t__ duplex; int speed; } ;
struct net_device {int dummy; } ;
struct fe_priv {scalar_t__* link; TYPE_2__* phy; TYPE_1__* soc; } ;
struct TYPE_4__ {scalar_t__* duplex; int* speed; int lock; struct phy_device** phy; scalar_t__* phy_node; } ;
struct TYPE_3__ {int (* mdio_adjust_link ) (struct fe_priv*,int) ;} ;





 struct fe_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fe_priv*,int) ;

__attribute__((used)) static void fe_phy_link_adjust(struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&priv->phy->lock, flags);
 for (i = 0; i < 8; i++) {
  if (priv->phy->phy_node[i]) {
   struct phy_device *phydev = priv->phy->phy[i];
   int status_change = 0;

   if (phydev->link)
    if (priv->phy->duplex[i] != phydev->duplex ||
        priv->phy->speed[i] != phydev->speed)
     status_change = 1;

   if (phydev->link != priv->link[i])
    status_change = 1;

   switch (phydev->speed) {
   case 128:
   case 129:
   case 130:
    priv->link[i] = phydev->link;
    priv->phy->duplex[i] = phydev->duplex;
    priv->phy->speed[i] = phydev->speed;

    if (status_change &&
        priv->soc->mdio_adjust_link)
     priv->soc->mdio_adjust_link(priv, i);
    break;
   }
  }
 }
 spin_unlock_irqrestore(&priv->phy->lock, flags);
}
