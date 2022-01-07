
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {scalar_t__ attached_dev; } ;
struct fe_priv {int phy_flags; scalar_t__ mii_bus; void* phy_dev; TYPE_1__* phy; } ;
struct TYPE_2__ {void** phy; scalar_t__* phy_node; } ;


 int FE_PHY_FLAG_ATTACH ;
 int FE_PHY_FLAG_PORT ;
 void* mdiobus_get_phy (scalar_t__,int) ;
 int phy_init (struct fe_priv*,struct phy_device*) ;

__attribute__((used)) static int fe_phy_connect(struct fe_priv *priv)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (priv->phy->phy_node[i]) {
   if (!priv->phy_dev) {
    priv->phy_dev = priv->phy->phy[i];
    priv->phy_flags = FE_PHY_FLAG_PORT;
   }
  } else if (priv->mii_bus) {
   struct phy_device *phydev;

   phydev = mdiobus_get_phy(priv->mii_bus, i);
   if (!phydev || phydev->attached_dev)
    continue;

   phy_init(priv, phydev);
   if (!priv->phy_dev) {
    priv->phy_dev = mdiobus_get_phy(priv->mii_bus, i);
    priv->phy_flags = FE_PHY_FLAG_ATTACH;
   }
  }
 }

 return 0;
}
