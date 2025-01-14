
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct switch_port_link {int link; int duplex; int aneg; void* speed; } ;
struct switch_dev {int dummy; } ;
struct b53_device {int enabled_ports; int duplex_reg; } ;


 int B53_LINK_STAT ;
 int B53_SPEED_STAT ;
 int B53_STAT_PAGE ;
 int BIT (int) ;
 int SPEED_PORT_FE (int,int) ;
 int SPEED_PORT_GE (int,int) ;



 void* SWITCH_PORT_SPEED_10 ;
 void* SWITCH_PORT_SPEED_100 ;
 void* SWITCH_PORT_SPEED_1000 ;
 int b53_read16 (struct b53_device*,int ,int ,int*) ;
 int b53_read32 (struct b53_device*,int ,int ,int*) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;
 scalar_t__ is_cpu_port (struct b53_device*,int) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_port_get_link(struct switch_dev *dev, int port,
        struct switch_port_link *link)
{
 struct b53_device *priv = sw_to_b53(dev);

 if (is_cpu_port(priv, port)) {
  link->link = 1;
  link->duplex = 1;
  link->speed = is5325(priv) || is5365(priv) ?
    SWITCH_PORT_SPEED_100 : SWITCH_PORT_SPEED_1000;
  link->aneg = 0;
 } else if (priv->enabled_ports & BIT(port)) {
  u32 speed;
  u16 lnk, duplex;

  b53_read16(priv, B53_STAT_PAGE, B53_LINK_STAT, &lnk);
  b53_read16(priv, B53_STAT_PAGE, priv->duplex_reg, &duplex);

  lnk = (lnk >> port) & 1;
  duplex = (duplex >> port) & 1;

  if (is5325(priv) || is5365(priv)) {
   u16 tmp;

   b53_read16(priv, B53_STAT_PAGE, B53_SPEED_STAT, &tmp);
   speed = SPEED_PORT_FE(tmp, port);
  } else {
   b53_read32(priv, B53_STAT_PAGE, B53_SPEED_STAT, &speed);
   speed = SPEED_PORT_GE(speed, port);
  }

  link->link = lnk;
  if (lnk) {
   link->duplex = duplex;
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
   }
  }

  link->aneg = 1;
 } else {
  link->link = 0;
 }

 return 0;

}
