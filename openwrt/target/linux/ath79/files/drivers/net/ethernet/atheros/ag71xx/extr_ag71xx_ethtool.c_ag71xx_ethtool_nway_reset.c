
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ag71xx {struct phy_device* phy_dev; } ;


 int ENODEV ;
 int genphy_restart_aneg (struct phy_device*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ag71xx_ethtool_nway_reset(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);
 struct phy_device *phydev = ag->phy_dev;

 if (!phydev)
  return -ENODEV;

 return genphy_restart_aneg(phydev);
}
