
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_port_link {int speed; scalar_t__ duplex; int link; } ;
struct TYPE_2__ {int addr; } ;
struct phy_device {scalar_t__ state; int link; int attached_dev; int (* adjust_link ) (int ) ;int duplex; int speed; TYPE_1__ mdio; struct ar8xxx_priv* priv; } ;
struct ar8xxx_priv {int dummy; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ PHY_CHANGELINK ;
 scalar_t__ PHY_RUNNING ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;



 int ar8216_read_port_link (struct ar8xxx_priv*,int ,struct switch_port_link*) ;
 int ar8xxx_check_link_states (struct ar8xxx_priv*) ;
 int genphy_read_status (struct phy_device*) ;
 int netif_carrier_on (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
ar8xxx_phy_read_status(struct phy_device *phydev)
{
 struct ar8xxx_priv *priv = phydev->priv;
 struct switch_port_link link;


 if (phydev->state == PHY_CHANGELINK)
  ar8xxx_check_link_states(priv);

 if (phydev->mdio.addr != 0)
  return genphy_read_status(phydev);

 ar8216_read_port_link(priv, phydev->mdio.addr, &link);
 phydev->link = !!link.link;
 if (!phydev->link)
  return 0;

 switch (link.speed) {
 case 130:
  phydev->speed = SPEED_10;
  break;
 case 129:
  phydev->speed = SPEED_100;
  break;
 case 128:
  phydev->speed = SPEED_1000;
  break;
 default:
  phydev->speed = 0;
 }
 phydev->duplex = link.duplex ? DUPLEX_FULL : DUPLEX_HALF;

 phydev->state = PHY_RUNNING;
 netif_carrier_on(phydev->attached_dev);
 if (phydev->adjust_link)
  phydev->adjust_link(phydev->attached_dev);

 return 0;
}
