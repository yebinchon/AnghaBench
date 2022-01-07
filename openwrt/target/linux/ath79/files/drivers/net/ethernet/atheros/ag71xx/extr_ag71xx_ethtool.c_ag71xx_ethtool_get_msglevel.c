
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ag71xx {int msg_enable; } ;


 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ag71xx_ethtool_get_msglevel(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);

 return ag->msg_enable;
}
