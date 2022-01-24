#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fe_priv {TYPE_3__* mii_bus; TYPE_6__* dev; TYPE_1__* soc; TYPE_2__* phy; } ;
struct device_node {char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  id; TYPE_6__* parent; struct fe_priv* priv; int /*<<< orphan*/  reset; scalar_t__ write; scalar_t__ read; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {scalar_t__ mdio_write; scalar_t__ mdio_read; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,char*) ; 
 int /*<<< orphan*/  fe_mdio_reset ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_3__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 TYPE_2__ phy_ralink ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct fe_priv *priv)
{
	struct device_node *mii_np;
	int err;

	if (!priv->soc->mdio_read || !priv->soc->mdio_write)
		return 0;

	FUNC8(&phy_ralink.lock);
	priv->phy = &phy_ralink;

	mii_np = FUNC4(priv->dev->of_node, "mdio-bus");
	if (!mii_np) {
		FUNC0(priv->dev, "no %s child node found", "mdio-bus");
		return -ENODEV;
	}

	if (!FUNC3(mii_np)) {
		err = 0;
		goto err_put_node;
	}

	priv->mii_bus = FUNC2();
	if (!priv->mii_bus) {
		err = -ENOMEM;
		goto err_put_node;
	}

	priv->mii_bus->name = "mdio";
	priv->mii_bus->read = priv->soc->mdio_read;
	priv->mii_bus->write = priv->soc->mdio_write;
	priv->mii_bus->reset = fe_mdio_reset;
	priv->mii_bus->priv = priv;
	priv->mii_bus->parent = priv->dev;

	FUNC7(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s", mii_np->name);
	err = FUNC5(priv->mii_bus, mii_np);
	if (err)
		goto err_free_bus;

	return 0;

err_free_bus:
	FUNC1(priv->mii_bus);
err_put_node:
	FUNC6(mii_np);
	priv->mii_bus = NULL;
	return err;
}