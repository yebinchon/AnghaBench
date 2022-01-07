
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct switch_port_link {int speed; scalar_t__ duplex; scalar_t__ aneg; } ;
struct switch_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phy_write16 ) (struct switch_dev*,int,int ,int) ;} ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int ENOTSUPP ;
 int MII_BMCR ;



 scalar_t__ WARN_ON (int) ;
 int stub1 (struct switch_dev*,int,int ,int) ;
 int stub2 (struct switch_dev*,int,int ,int) ;
 int stub3 (struct switch_dev*,int,int ,int) ;

int
switch_generic_set_link(struct switch_dev *dev, int port,
   struct switch_port_link *link)
{
 if (WARN_ON(!dev->ops->phy_write16))
  return -ENOTSUPP;


 if (link->aneg) {
  dev->ops->phy_write16(dev, port, MII_BMCR, 0x0000);
  dev->ops->phy_write16(dev, port, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
 } else {
  u16 bmcr = 0;

  if (link->duplex)
   bmcr |= BMCR_FULLDPLX;

  switch (link->speed) {
  case 130:
   break;
  case 129:
   bmcr |= BMCR_SPEED100;
   break;
  case 128:
   bmcr |= BMCR_SPEED1000;
   break;
  default:
   return -ENOTSUPP;
  }

  dev->ops->phy_write16(dev, port, MII_BMCR, bmcr);
 }

 return 0;
}
