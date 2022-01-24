#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct ag71xx {TYPE_3__* phy_dev; TYPE_1__* pdev; int /*<<< orphan*/  phy_if_mode; int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct TYPE_9__ {TYPE_2__* drv; int /*<<< orphan*/  phy_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_5__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  ag71xx_phy_link_adjust ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 int FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

int FUNC9(struct ag71xx *ag)
{
	struct device_node *np = ag->pdev->dev.of_node;
	struct device_node *phy_node;
	int ret;

	if (FUNC6(np)) {
		ret = FUNC7(np);
		if (ret < 0) {
			FUNC0(&ag->pdev->dev,
				"Failed to register fixed PHY link: %d\n", ret);
			return ret;
		}

		phy_node = FUNC2(np);
	} else {
		phy_node = FUNC4(np, "phy-handle", 0);
	}

	if (!phy_node) {
		FUNC0(&ag->pdev->dev,
			"Could not find valid phy node\n");
		return -ENODEV;
	}

	ag->phy_dev = FUNC5(ag->dev, phy_node, ag71xx_phy_link_adjust,
				     0, ag->phy_if_mode);

	FUNC3(phy_node);

	if (!ag->phy_dev) {
		FUNC0(&ag->pdev->dev,
			"Could not connect to PHY device. Deferring probe.\n");
		return -EPROBE_DEFER;
	}

	FUNC1(&ag->pdev->dev, "connected to PHY at %s [uid=%08x, driver=%s]\n",
		    FUNC8(ag->phy_dev),
		    ag->phy_dev->phy_id, ag->phy_dev->drv->name);

	return 0;
}