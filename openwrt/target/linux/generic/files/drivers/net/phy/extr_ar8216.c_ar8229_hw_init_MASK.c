#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ar8xxx_priv {int initialized; scalar_t__ port4_phy; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216_CTRL_RESET ; 
 int /*<<< orphan*/  AR8216_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR8229_OPER_MODE0_MAC_GMII_EN ; 
 int /*<<< orphan*/  AR8229_OPER_MODE0_PHY_MII_EN ; 
 int /*<<< orphan*/  AR8229_REG_OPER_MODE0 ; 
 int /*<<< orphan*/  AR8229_REG_OPER_MODE1 ; 
 int /*<<< orphan*/  AR8229_REG_OPER_MODE1_PHY4_MII_EN ; 
 int EINVAL ; 
 int PHY_INTERFACE_MODE_GMII ; 
 int PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct ar8xxx_priv *priv)
{
	int phy_if_mode;

	if (priv->initialized)
		return 0;

	FUNC3(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET);
	FUNC2(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET, 0, 1000);

	phy_if_mode = FUNC4(priv->pdev->of_node);

	if (phy_if_mode == PHY_INTERFACE_MODE_GMII) {
		FUNC3(priv, AR8229_REG_OPER_MODE0,
				 AR8229_OPER_MODE0_MAC_GMII_EN);
	} else if (phy_if_mode == PHY_INTERFACE_MODE_MII) {
		FUNC3(priv, AR8229_REG_OPER_MODE0,
				 AR8229_OPER_MODE0_PHY_MII_EN);
	} else {
		FUNC5("ar8229: unsupported mii mode\n");
		return -EINVAL;
	}

	if (priv->port4_phy) {
		FUNC3(priv, AR8229_REG_OPER_MODE1,
			     AR8229_REG_OPER_MODE1_PHY4_MII_EN);
		/* disable port5 to prevent mii conflict */
		FUNC3(priv, FUNC0(5), 0);
	}

	FUNC1(priv);

	priv->initialized = true;
	return 0;
}