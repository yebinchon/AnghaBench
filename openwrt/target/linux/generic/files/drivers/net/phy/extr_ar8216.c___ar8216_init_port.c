
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_PORT_CPU ;
 int AR8216_PORT_CTRL_LEARN ;
 int AR8216_PORT_CTRL_STATE_S ;
 int AR8216_PORT_SPEED_1000M ;
 int AR8216_PORT_SPEED_100M ;
 int AR8216_PORT_STATUS_DUPLEX ;
 int AR8216_PORT_STATUS_LINK_AUTO ;
 int AR8216_PORT_STATUS_LINK_UP ;
 int AR8216_PORT_STATUS_RXFLOW ;
 int AR8216_PORT_STATUS_RXMAC ;
 int AR8216_PORT_STATUS_TXFLOW ;
 int AR8216_PORT_STATUS_TXMAC ;
 int AR8216_REG_PORT_CTRL (int) ;
 int AR8216_REG_PORT_STATUS (int) ;
 int AR8216_REG_PORT_VLAN (int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static void
__ar8216_init_port(struct ar8xxx_priv *priv, int port,
     bool cpu_ge, bool flow_en)
{

 ar8xxx_write(priv, AR8216_REG_PORT_CTRL(port),
  AR8216_PORT_CTRL_LEARN |
  (4 << AR8216_PORT_CTRL_STATE_S));

 ar8xxx_write(priv, AR8216_REG_PORT_VLAN(port), 0);

 if (port == AR8216_PORT_CPU) {
  ar8xxx_write(priv, AR8216_REG_PORT_STATUS(port),
   AR8216_PORT_STATUS_LINK_UP |
   (cpu_ge ? AR8216_PORT_SPEED_1000M : AR8216_PORT_SPEED_100M) |
   AR8216_PORT_STATUS_TXMAC |
   AR8216_PORT_STATUS_RXMAC |
   (flow_en ? AR8216_PORT_STATUS_RXFLOW : 0) |
   (flow_en ? AR8216_PORT_STATUS_TXFLOW : 0) |
   AR8216_PORT_STATUS_DUPLEX);
 } else {
  ar8xxx_write(priv, AR8216_REG_PORT_STATUS(port),
   AR8216_PORT_STATUS_LINK_AUTO);
 }
}
