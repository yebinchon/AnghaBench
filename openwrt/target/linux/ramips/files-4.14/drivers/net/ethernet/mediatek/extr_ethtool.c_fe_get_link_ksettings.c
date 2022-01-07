
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct fe_priv {scalar_t__ phy_flags; int phy_dev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENODEV ;
 scalar_t__ FE_PHY_FLAG_ATTACH ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;
 scalar_t__ phy_read_status (int ) ;

__attribute__((used)) static int fe_get_link_ksettings(struct net_device *ndev,
      struct ethtool_link_ksettings *cmd)
{
 struct fe_priv *priv = netdev_priv(ndev);

 if (!priv->phy_dev)
  return -ENODEV;

 if (priv->phy_flags == FE_PHY_FLAG_ATTACH) {
  if (phy_read_status(priv->phy_dev))
   return -ENODEV;
 }

 phy_ethtool_ksettings_get(ndev->phydev, cmd);

 return 0;
}
