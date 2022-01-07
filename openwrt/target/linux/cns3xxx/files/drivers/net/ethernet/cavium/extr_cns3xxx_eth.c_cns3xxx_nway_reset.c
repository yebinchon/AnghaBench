
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int phydev; } ;
struct net_device {int dummy; } ;


 struct port* netdev_priv (struct net_device*) ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int cns3xxx_nway_reset(struct net_device *dev)
{
 struct port *port = netdev_priv(dev);
 return phy_start_aneg(port->phydev);
}
