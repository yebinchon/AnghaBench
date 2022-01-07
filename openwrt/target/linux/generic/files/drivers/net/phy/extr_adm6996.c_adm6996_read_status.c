
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int attached_dev; int (* adjust_link ) (int ) ;int state; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int PHY_RUNNING ;
 int SPEED_100 ;
 int netif_carrier_on (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int adm6996_read_status(struct phy_device *phydev)
{
 phydev->speed = SPEED_100;
 phydev->duplex = DUPLEX_FULL;
 phydev->link = 1;

 phydev->state = PHY_RUNNING;
 netif_carrier_on(phydev->attached_dev);
 phydev->adjust_link(phydev->attached_dev);

 return 0;
}
