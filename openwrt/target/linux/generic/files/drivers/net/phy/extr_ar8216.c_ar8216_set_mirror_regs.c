
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int source_port; int monitor_port; scalar_t__ mirror_tx; scalar_t__ mirror_rx; } ;


 int AR8216_GLOBAL_CPUPORT_MIRROR_PORT ;
 int AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S ;
 int AR8216_NUM_PORTS ;
 int AR8216_PORT_CTRL_MIRROR_RX ;
 int AR8216_PORT_CTRL_MIRROR_TX ;
 int AR8216_REG_GLOBAL_CPUPORT ;
 int AR8216_REG_PORT_CTRL (int) ;
 int ar8xxx_reg_clear (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int ,int) ;

__attribute__((used)) static void
ar8216_set_mirror_regs(struct ar8xxx_priv *priv)
{
 int port;


 ar8xxx_rmw(priv, AR8216_REG_GLOBAL_CPUPORT,
     AR8216_GLOBAL_CPUPORT_MIRROR_PORT,
     (0xF << AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S));
 for (port = 0; port < AR8216_NUM_PORTS; port++) {
  ar8xxx_reg_clear(priv, AR8216_REG_PORT_CTRL(port),
      AR8216_PORT_CTRL_MIRROR_RX);

  ar8xxx_reg_clear(priv, AR8216_REG_PORT_CTRL(port),
      AR8216_PORT_CTRL_MIRROR_TX);
 }


 if (priv->source_port >= AR8216_NUM_PORTS ||
     priv->monitor_port >= AR8216_NUM_PORTS ||
     priv->source_port == priv->monitor_port) {
  return;
 }

 ar8xxx_rmw(priv, AR8216_REG_GLOBAL_CPUPORT,
     AR8216_GLOBAL_CPUPORT_MIRROR_PORT,
     (priv->monitor_port << AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S));

 if (priv->mirror_rx)
  ar8xxx_reg_set(priv, AR8216_REG_PORT_CTRL(priv->source_port),
      AR8216_PORT_CTRL_MIRROR_RX);

 if (priv->mirror_tx)
  ar8xxx_reg_set(priv, AR8216_REG_PORT_CTRL(priv->source_port),
      AR8216_PORT_CTRL_MIRROR_TX);
}
