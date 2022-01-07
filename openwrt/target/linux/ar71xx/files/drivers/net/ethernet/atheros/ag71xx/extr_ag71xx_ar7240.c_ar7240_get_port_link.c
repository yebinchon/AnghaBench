
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct switch_port_link {int aneg; int link; int duplex; int tx_flow; int rx_flow; int speed; } ;
struct switch_dev {int dummy; } ;
struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;


 int AR7240_NUM_PORTS ;
 int AR7240_PORT_STATUS_DUPLEX ;
 int AR7240_PORT_STATUS_LINK_AUTO ;
 int AR7240_PORT_STATUS_LINK_UP ;
 int AR7240_PORT_STATUS_RXFLOW ;



 int AR7240_PORT_STATUS_SPEED_M ;
 int AR7240_PORT_STATUS_TXFLOW ;
 int AR7240_REG_PORT_STATUS (int) ;
 int EINVAL ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 int SWITCH_PORT_SPEED_1000 ;
 int ar7240sw_reg_read (struct mii_bus*,int ) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_get_port_link(struct switch_dev *dev, int port,
       struct switch_port_link *link)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 struct mii_bus *mii = as->mii_bus;
 u32 status;

 if (port >= AR7240_NUM_PORTS)
  return -EINVAL;

 status = ar7240sw_reg_read(mii, AR7240_REG_PORT_STATUS(port));
 link->aneg = !!(status & AR7240_PORT_STATUS_LINK_AUTO);
 if (link->aneg) {
  link->link = !!(status & AR7240_PORT_STATUS_LINK_UP);
  if (!link->link)
   return 0;
 } else {
  link->link = 1;
 }

 link->duplex = !!(status & AR7240_PORT_STATUS_DUPLEX);
 link->tx_flow = !!(status & AR7240_PORT_STATUS_TXFLOW);
 link->rx_flow = !!(status & AR7240_PORT_STATUS_RXFLOW);
 switch (status & AR7240_PORT_STATUS_SPEED_M) {
 case 130:
  link->speed = SWITCH_PORT_SPEED_10;
  break;
 case 129:
  link->speed = SWITCH_PORT_SPEED_100;
  break;
 case 128:
  link->speed = SWITCH_PORT_SPEED_1000;
  break;
 }

 return 0;
}
