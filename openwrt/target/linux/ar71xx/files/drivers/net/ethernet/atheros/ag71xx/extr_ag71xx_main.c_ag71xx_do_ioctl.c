
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct ifreq {int ifr_data; } ;
struct ag71xx {int * phy_dev; } ;


 int EFAULT ;
 int EOPNOTSUPP ;





 int copy_from_user (int ,int ,int) ;
 int copy_to_user (int ,int ,int) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int phy_mii_ioctl (int *,struct ifreq*,int) ;

__attribute__((used)) static int ag71xx_do_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct ag71xx *ag = netdev_priv(dev);

 switch (cmd) {
 case 129:
  if (copy_from_user
   (dev->dev_addr, ifr->ifr_data, sizeof(dev->dev_addr)))
   return -EFAULT;
  return 0;

 case 132:
  if (copy_to_user
   (ifr->ifr_data, dev->dev_addr, sizeof(dev->dev_addr)))
   return -EFAULT;
  return 0;

 case 131:
 case 130:
 case 128:
  if (ag->phy_dev == ((void*)0))
   break;

  return phy_mii_ioctl(ag->phy_dev, ifr, cmd);

 default:
  break;
 }

 return -EOPNOTSUPP;
}
