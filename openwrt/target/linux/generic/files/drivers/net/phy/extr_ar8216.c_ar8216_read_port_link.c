
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switch_port_link {int aneg; int link; int duplex; int tx_flow; int rx_flow; int speed; int eee; } ;
struct ar8xxx_priv {int (* get_port_link ) (int) ;TYPE_1__* chip; } ;
struct TYPE_2__ {int (* read_port_status ) (struct ar8xxx_priv*,int) ;int (* read_port_eee_status ) (struct ar8xxx_priv*,int) ;} ;





 int AR8216_PORT_STATUS_DUPLEX ;
 int AR8216_PORT_STATUS_LINK_AUTO ;
 int AR8216_PORT_STATUS_LINK_UP ;
 int AR8216_PORT_STATUS_RXFLOW ;
 int AR8216_PORT_STATUS_SPEED ;
 int AR8216_PORT_STATUS_SPEED_S ;
 int AR8216_PORT_STATUS_TXFLOW ;
 int SWITCH_PORT_SPEED_10 ;
 int SWITCH_PORT_SPEED_100 ;
 int SWITCH_PORT_SPEED_1000 ;
 int SWITCH_PORT_SPEED_UNKNOWN ;
 int memset (struct switch_port_link*,char,int) ;
 int stub1 (struct ar8xxx_priv*,int) ;
 int stub2 (int) ;
 int stub3 (struct ar8xxx_priv*,int) ;

__attribute__((used)) static void
ar8216_read_port_link(struct ar8xxx_priv *priv, int port,
        struct switch_port_link *link)
{
 u32 status;
 u32 speed;

 memset(link, '\0', sizeof(*link));

 status = priv->chip->read_port_status(priv, port);

 link->aneg = !!(status & AR8216_PORT_STATUS_LINK_AUTO);
 if (link->aneg) {
  link->link = !!(status & AR8216_PORT_STATUS_LINK_UP);
 } else {
  link->link = 1;

  if (priv->get_port_link) {
   int err;

   err = priv->get_port_link(port);
   if (err >= 0)
    link->link = !!err;
  }
 }

 if (!link->link)
  return;

 link->duplex = !!(status & AR8216_PORT_STATUS_DUPLEX);
 link->tx_flow = !!(status & AR8216_PORT_STATUS_TXFLOW);
 link->rx_flow = !!(status & AR8216_PORT_STATUS_RXFLOW);

 if (link->aneg && link->duplex && priv->chip->read_port_eee_status)
  link->eee = priv->chip->read_port_eee_status(priv, port);

 speed = (status & AR8216_PORT_STATUS_SPEED) >>
   AR8216_PORT_STATUS_SPEED_S;

 switch (speed) {
 case 128:
  link->speed = SWITCH_PORT_SPEED_10;
  break;
 case 129:
  link->speed = SWITCH_PORT_SPEED_100;
  break;
 case 130:
  link->speed = SWITCH_PORT_SPEED_1000;
  break;
 default:
  link->speed = SWITCH_PORT_SPEED_UNKNOWN;
  break;
 }
}
