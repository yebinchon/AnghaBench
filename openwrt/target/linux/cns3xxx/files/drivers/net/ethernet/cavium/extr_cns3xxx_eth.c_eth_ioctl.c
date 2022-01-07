
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int phydev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 struct port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int eth_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct port *port = netdev_priv(dev);

 if (!netif_running(dev))
  return -EINVAL;
 return phy_mii_ioctl(port->phydev, req, cmd);
}
