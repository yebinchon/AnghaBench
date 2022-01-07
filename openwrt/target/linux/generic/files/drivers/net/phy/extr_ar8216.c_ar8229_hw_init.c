
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar8xxx_priv {int initialized; scalar_t__ port4_phy; TYPE_1__* pdev; } ;
struct TYPE_2__ {int of_node; } ;


 int AR8216_CTRL_RESET ;
 int AR8216_REG_CTRL ;
 int AR8216_REG_PORT_STATUS (int) ;
 int AR8229_OPER_MODE0_MAC_GMII_EN ;
 int AR8229_OPER_MODE0_PHY_MII_EN ;
 int AR8229_REG_OPER_MODE0 ;
 int AR8229_REG_OPER_MODE1 ;
 int AR8229_REG_OPER_MODE1_PHY4_MII_EN ;
 int EINVAL ;
 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int ar8xxx_phy_init (struct ar8xxx_priv*) ;
 int ar8xxx_reg_wait (struct ar8xxx_priv*,int ,int ,int ,int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int ) ;
 int of_get_phy_mode (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int
ar8229_hw_init(struct ar8xxx_priv *priv)
{
 int phy_if_mode;

 if (priv->initialized)
  return 0;

 ar8xxx_write(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET);
 ar8xxx_reg_wait(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET, 0, 1000);

 phy_if_mode = of_get_phy_mode(priv->pdev->of_node);

 if (phy_if_mode == PHY_INTERFACE_MODE_GMII) {
  ar8xxx_write(priv, AR8229_REG_OPER_MODE0,
     AR8229_OPER_MODE0_MAC_GMII_EN);
 } else if (phy_if_mode == PHY_INTERFACE_MODE_MII) {
  ar8xxx_write(priv, AR8229_REG_OPER_MODE0,
     AR8229_OPER_MODE0_PHY_MII_EN);
 } else {
  pr_err("ar8229: unsupported mii mode\n");
  return -EINVAL;
 }

 if (priv->port4_phy) {
  ar8xxx_write(priv, AR8229_REG_OPER_MODE1,
        AR8229_REG_OPER_MODE1_PHY4_MII_EN);

  ar8xxx_write(priv, AR8216_REG_PORT_STATUS(5), 0);
 }

 ar8xxx_phy_init(priv);

 priv->initialized = 1;
 return 0;
}
