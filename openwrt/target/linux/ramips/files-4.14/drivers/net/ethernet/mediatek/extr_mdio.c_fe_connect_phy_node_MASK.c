#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct phy_device {int no_auto_carrier_off; TYPE_2__* drv; int /*<<< orphan*/  phy_id; TYPE_1__ mdio; int /*<<< orphan*/  supported; int /*<<< orphan*/  advertising; } ;
struct fe_priv {scalar_t__* link; TYPE_3__* phy; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {struct phy_device** phy; int /*<<< orphan*/ ** phy_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PHY_GBIT_FEATURES ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fe_phy_link_adjust ; 
 int FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct fe_priv *priv, struct device_node *phy_node, int port)
{
	const __be32 *_phy_addr = NULL;
	struct phy_device *phydev;
	int phy_mode;

	_phy_addr = FUNC5(phy_node, "reg", NULL);

	if (!_phy_addr || (FUNC0(*_phy_addr) >= 0x20)) {
		FUNC7("%s: invalid phy id\n", phy_node->name);
		return -EINVAL;
	}

	phy_mode = FUNC4(phy_node);
	if (phy_mode < 0) {
		FUNC1(priv->dev, "incorrect phy-mode %d\n", phy_mode);
		priv->phy->phy_node[port] = NULL;
		return -EINVAL;
	}

	phydev = FUNC6(priv->netdev, phy_node, fe_phy_link_adjust,
				0, phy_mode);
	if (!phydev) {
		FUNC1(priv->dev, "could not connect to PHY\n");
		priv->phy->phy_node[port] = NULL;
		return -ENODEV;
	}

	phydev->supported &= PHY_GBIT_FEATURES;
	phydev->advertising = phydev->supported;
	phydev->no_auto_carrier_off = 1;

	FUNC2(priv->dev,
		 "connected port %d to PHY at %s [uid=%08x, driver=%s]\n",
		 port, FUNC3(&phydev->mdio.dev), phydev->phy_id,
		 phydev->drv->name);

	priv->phy->phy[port] = phydev;
	priv->link[port] = 0;

	return 0;
}