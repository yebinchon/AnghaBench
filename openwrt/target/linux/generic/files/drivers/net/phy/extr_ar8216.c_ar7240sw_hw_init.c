
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int initialized; int port4_phy; } ;


 int AR8216_CTRL_RESET ;
 int AR8216_REG_CTRL ;
 int AR8216_REG_PORT_STATUS (int) ;
 int ar8xxx_phy_init (struct ar8xxx_priv*) ;
 int ar8xxx_reg_wait (struct ar8xxx_priv*,int ,int ,int ,int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int ) ;

__attribute__((used)) static int
ar7240sw_hw_init(struct ar8xxx_priv *priv)
{
 if (priv->initialized)
  return 0;

 ar8xxx_write(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET);
 ar8xxx_reg_wait(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET, 0, 1000);

 priv->port4_phy = 1;

 ar8xxx_write(priv, AR8216_REG_PORT_STATUS(5), 0);

 ar8xxx_phy_init(priv);

 priv->initialized = 1;
 return 0;
}
