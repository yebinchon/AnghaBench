#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/ * irq; scalar_t__ phy_mask; int /*<<< orphan*/  id; struct device* parent; struct ag71xx_mdio* priv; int /*<<< orphan*/  reset; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct device_node {char* name; } ;
struct ag71xx_mdio {struct mii_bus* mii_bus; int /*<<< orphan*/  mdio_reset; int /*<<< orphan*/  mii_regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ag71xx_mdio_mii_read ; 
 int /*<<< orphan*/  ag71xx_mdio_mii_write ; 
 int /*<<< orphan*/  ag71xx_mdio_reset ; 
 int /*<<< orphan*/  bus_count ; 
 struct ag71xx_mdio* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct mii_bus*,struct device_node*) ; 
 int FUNC7 (struct device_node*,char*) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ag71xx_mdio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *amdev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node;
	struct ag71xx_mdio *am;
	struct mii_bus *mii_bus;
	bool builtin_switch;
	int i, err;

	am = FUNC2(amdev, sizeof(*am), GFP_KERNEL);
	if (!am)
		return -ENOMEM;

	am->mii_regmap = FUNC13(np, "regmap");
	if (FUNC0(am->mii_regmap))
		return FUNC1(am->mii_regmap);

	mii_bus = FUNC3(amdev);
	if (!mii_bus)
		return -ENOMEM;

	am->mdio_reset = FUNC4(amdev, "mdio");
	builtin_switch = FUNC7(np, "builtin-switch");

	mii_bus->name = "ag71xx_mdio";
	mii_bus->read = ag71xx_mdio_mii_read;
	mii_bus->write = ag71xx_mdio_mii_write;
	mii_bus->reset = ag71xx_mdio_reset;
	mii_bus->priv = am;
	mii_bus->parent = amdev;
	FUNC12(mii_bus->id, MII_BUS_ID_SIZE, "%s.%d", np->name, bus_count++);

	if (!builtin_switch &&
	    FUNC8(np, "phy-mask", &mii_bus->phy_mask))
		mii_bus->phy_mask = 0;

	for (i = 0; i < PHY_MAX_ADDR; i++)
		mii_bus->irq[i] = PHY_POLL;

	if (!FUNC0(am->mdio_reset)) {
		FUNC10(am->mdio_reset);
		FUNC5(100);
		FUNC11(am->mdio_reset);
		FUNC5(200);
	}

	err = FUNC6(mii_bus, np);
	if (err)
		return err;

	am->mii_bus = mii_bus;
	FUNC9(pdev, am);

	return 0;
}