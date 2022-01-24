#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {int addr; TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_PHY_MODE_SEL ; 
 int /*<<< orphan*/  AR8327_PHY_MODE_SEL_RGMII ; 
 int /*<<< orphan*/  AR8327_PHY_SYS_CTRL ; 
 int /*<<< orphan*/  AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY ; 
 int /*<<< orphan*/  AR8327_PHY_TEST_CTRL ; 
 int /*<<< orphan*/  AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct ar8xxx_priv *priv, struct phy_device *phydev)
{
	u16 phy_val = 0;
	int phyaddr = phydev->mdio.addr;
	struct device_node *np = phydev->mdio.dev.of_node;

	if (!np)
		return;

	if (!FUNC2(np, "qca,phy-rgmii-en")) {
		FUNC3("ar8327: qca,phy-rgmii-en is not specified\n");
		return;
	}
	FUNC0(priv, phyaddr,
				AR8327_PHY_MODE_SEL, &phy_val);
	phy_val |= AR8327_PHY_MODE_SEL_RGMII;
	FUNC1(priv, phyaddr,
				AR8327_PHY_MODE_SEL, phy_val);

	/* set rgmii tx clock delay if needed */
	if (!FUNC2(np, "qca,txclk-delay-en")) {
		FUNC3("ar8327: qca,txclk-delay-en is not specified\n");
		return;
	}
	FUNC0(priv, phyaddr,
				AR8327_PHY_SYS_CTRL, &phy_val);
	phy_val |= AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY;
	FUNC1(priv, phyaddr,
				AR8327_PHY_SYS_CTRL, phy_val);

	/* set rgmii rx clock delay if needed */
	if (!FUNC2(np, "qca,rxclk-delay-en")) {
		FUNC3("ar8327: qca,rxclk-delay-en is not specified\n");
		return;
	}
	FUNC0(priv, phyaddr,
				AR8327_PHY_TEST_CTRL, &phy_val);
	phy_val |= AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY;
	FUNC1(priv, phyaddr,
				AR8327_PHY_TEST_CTRL, phy_val);
}