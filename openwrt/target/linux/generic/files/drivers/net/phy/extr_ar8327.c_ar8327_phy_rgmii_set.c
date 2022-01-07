
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {int addr; TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;
struct ar8xxx_priv {int dummy; } ;


 int AR8327_PHY_MODE_SEL ;
 int AR8327_PHY_MODE_SEL_RGMII ;
 int AR8327_PHY_SYS_CTRL ;
 int AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY ;
 int AR8327_PHY_TEST_CTRL ;
 int AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY ;
 int ar8xxx_phy_dbg_read (struct ar8xxx_priv*,int,int ,int *) ;
 int ar8xxx_phy_dbg_write (struct ar8xxx_priv*,int,int ,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static void
ar8327_phy_rgmii_set(struct ar8xxx_priv *priv, struct phy_device *phydev)
{
 u16 phy_val = 0;
 int phyaddr = phydev->mdio.addr;
 struct device_node *np = phydev->mdio.dev.of_node;

 if (!np)
  return;

 if (!of_property_read_bool(np, "qca,phy-rgmii-en")) {
  pr_err("ar8327: qca,phy-rgmii-en is not specified\n");
  return;
 }
 ar8xxx_phy_dbg_read(priv, phyaddr,
    AR8327_PHY_MODE_SEL, &phy_val);
 phy_val |= AR8327_PHY_MODE_SEL_RGMII;
 ar8xxx_phy_dbg_write(priv, phyaddr,
    AR8327_PHY_MODE_SEL, phy_val);


 if (!of_property_read_bool(np, "qca,txclk-delay-en")) {
  pr_err("ar8327: qca,txclk-delay-en is not specified\n");
  return;
 }
 ar8xxx_phy_dbg_read(priv, phyaddr,
    AR8327_PHY_SYS_CTRL, &phy_val);
 phy_val |= AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY;
 ar8xxx_phy_dbg_write(priv, phyaddr,
    AR8327_PHY_SYS_CTRL, phy_val);


 if (!of_property_read_bool(np, "qca,rxclk-delay-en")) {
  pr_err("ar8327: qca,rxclk-delay-en is not specified\n");
  return;
 }
 ar8xxx_phy_dbg_read(priv, phyaddr,
    AR8327_PHY_TEST_CTRL, &phy_val);
 phy_val |= AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY;
 ar8xxx_phy_dbg_write(priv, phyaddr,
    AR8327_PHY_TEST_CTRL, phy_val);
}
