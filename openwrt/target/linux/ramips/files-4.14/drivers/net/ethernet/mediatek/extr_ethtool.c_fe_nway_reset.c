
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int phy_dev; } ;


 int EOPNOTSUPP ;
 int genphy_restart_aneg (int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fe_nway_reset(struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);

 if (!priv->phy_dev)
  goto out_nway_reset;

 return genphy_restart_aneg(priv->phy_dev);

out_nway_reset:
 return -EOPNOTSUPP;
}
