
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct fe_priv {int phy_flags; scalar_t__ mii_bus; TYPE_4__* phy_dev; TYPE_2__* phy; } ;
struct TYPE_7__ {size_t phy_address; } ;
struct ethtool_link_ksettings {TYPE_3__ base; } ;
struct TYPE_5__ {size_t addr; } ;
struct TYPE_8__ {TYPE_1__ mdio; } ;
struct TYPE_6__ {TYPE_4__** phy; scalar_t__* phy_node; } ;


 int ENODEV ;
 int FE_PHY_FLAG_ATTACH ;
 int FE_PHY_FLAG_PORT ;
 TYPE_4__* mdiobus_get_phy (scalar_t__,size_t) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int fe_set_link_ksettings(struct net_device *ndev,
      const struct ethtool_link_ksettings *cmd)
{
 struct fe_priv *priv = netdev_priv(ndev);

 if (!priv->phy_dev)
  goto out_sset;

 if (cmd->base.phy_address != priv->phy_dev->mdio.addr) {
  if (priv->phy->phy_node[cmd->base.phy_address]) {
   priv->phy_dev = priv->phy->phy[cmd->base.phy_address];
   priv->phy_flags = FE_PHY_FLAG_PORT;
  } else if (priv->mii_bus && mdiobus_get_phy(priv->mii_bus, cmd->base.phy_address)) {
   priv->phy_dev = mdiobus_get_phy(priv->mii_bus, cmd->base.phy_address);
   priv->phy_flags = FE_PHY_FLAG_ATTACH;
  } else {
   goto out_sset;
  }
 }

 return phy_ethtool_ksettings_set(ndev->phydev, cmd);

out_sset:
 return -ENODEV;
}
