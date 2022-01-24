#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct switch_dev {char* alias; int /*<<< orphan*/  name; int /*<<< orphan*/  devname; int /*<<< orphan*/  ports; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct mdio_device {TYPE_3__ dev; TYPE_1__* bus; } ;
struct device_node {int dummy; } ;
struct ar8xxx_priv {int port4_phy; struct switch_dev dev; scalar_t__ use_count; int /*<<< orphan*/  list; TYPE_1__* mii_bus; int /*<<< orphan*/  chip_rev; TYPE_3__* pdev; TYPE_2__* sw_mii_bus; struct ar8xxx_chip const* chip; scalar_t__ mib_poll_interval; } ;
struct ar8xxx_chip {scalar_t__ phy_write; scalar_t__ phy_read; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  id; TYPE_3__* parent; struct ar8xxx_priv* priv; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 struct ar8xxx_priv* FUNC0 () ; 
 int /*<<< orphan*/  ar8xxx_dev_list ; 
 int /*<<< orphan*/  ar8xxx_dev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  ar8xxx_mdiodev_of_match ; 
 int /*<<< orphan*/  ar8xxx_phy_read ; 
 int /*<<< orphan*/  ar8xxx_phy_write ; 
 int FUNC2 (struct ar8xxx_priv*) ; 
 int FUNC3 (struct ar8xxx_priv*) ; 
 int FUNC4 (struct ar8xxx_priv*) ; 
 char* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct ar8xxx_priv*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC13 (TYPE_2__*,struct device_node*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC17 (struct switch_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC20(struct mdio_device *mdiodev)
{
	const struct of_device_id *match;
	struct ar8xxx_priv *priv;
	struct switch_dev *swdev;
	struct device_node *mdio_node;
	int ret;

	match = FUNC12(ar8xxx_mdiodev_of_match, &mdiodev->dev);
	if (!match)
		return -EINVAL;

	priv = FUNC0();
	if (priv == NULL)
		return -ENOMEM;

	priv->mii_bus = mdiodev->bus;
	priv->pdev = &mdiodev->dev;
	priv->chip = (const struct ar8xxx_chip *) match->data;

	ret = FUNC15(priv->pdev->of_node, "qca,mib-poll-interval",
				   &priv->mib_poll_interval);
	if (ret)
		priv->mib_poll_interval = 0;

	ret = FUNC3(priv);
	if (ret)
		goto free_priv;

	ret = FUNC2(priv);
	if (ret)
		goto free_priv;

	if (priv->chip->phy_read && priv->chip->phy_write) {
		priv->sw_mii_bus = FUNC7(&mdiodev->dev);
		priv->sw_mii_bus->name = "ar8xxx-mdio";
		priv->sw_mii_bus->read = ar8xxx_phy_read;
		priv->sw_mii_bus->write = ar8xxx_phy_write;
		priv->sw_mii_bus->priv = priv;
		priv->sw_mii_bus->parent = &mdiodev->dev;
		FUNC18(priv->sw_mii_bus->id, MII_BUS_ID_SIZE, "%s",
			 FUNC5(&mdiodev->dev));
		mdio_node = FUNC11(priv->pdev->of_node, "mdio-bus");
		ret = FUNC13(priv->sw_mii_bus, mdio_node);
		if (ret)
			goto free_priv;
	}

	swdev = &priv->dev;
	swdev->alias = FUNC5(&mdiodev->dev);

	if (FUNC14(priv->pdev->of_node, "qca,phy4-mii-enable")) {
		priv->port4_phy = true;
		swdev->ports--;
	}

	ret = FUNC17(swdev, NULL);
	if (ret)
		goto free_priv;

	FUNC16("%s: %s rev. %u switch registered on %s\n",
		swdev->devname, swdev->name, priv->chip_rev,
		FUNC5(&priv->mii_bus->dev));

	FUNC9(&ar8xxx_dev_list_lock);
	FUNC8(&priv->list, &ar8xxx_dev_list);
	FUNC10(&ar8xxx_dev_list_lock);

	priv->use_count++;

	ret = FUNC4(priv);
	if (ret)
		goto err_unregister_switch;

	FUNC6(&mdiodev->dev, priv);

	return 0;

err_unregister_switch:
	if (--priv->use_count)
		return ret;

	FUNC19(&priv->dev);

free_priv:
	FUNC1(priv);
	return ret;
}