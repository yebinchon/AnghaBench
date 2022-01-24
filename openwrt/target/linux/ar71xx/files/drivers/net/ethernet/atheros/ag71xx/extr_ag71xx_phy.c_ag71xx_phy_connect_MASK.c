#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ag71xx_platform_data {scalar_t__ phy_mask; scalar_t__ switch_data; TYPE_4__* mii_bus_dev; } ;
struct ag71xx {TYPE_2__* mii_bus; TYPE_1__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bus; } ;
struct TYPE_7__ {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  (* reset ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct ag71xx*) ; 
 struct ag71xx_platform_data* FUNC1 (struct ag71xx*) ; 
 int FUNC2 (struct ag71xx*) ; 
 int FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_2__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

int FUNC10(struct ag71xx *ag)
{
	struct ag71xx_platform_data *pdata = FUNC1(ag);

	if (pdata->mii_bus_dev == NULL ||
	    pdata->mii_bus_dev->bus == NULL )
		return FUNC2(ag);

	ag->mii_bus = FUNC6(pdata->mii_bus_dev);
	if (ag->mii_bus == NULL) {
		FUNC4(&ag->pdev->dev, "unable to find MII bus on device '%s'\n",
			   FUNC5(pdata->mii_bus_dev));
		return -ENODEV;
	}

	/* Reset the mdio bus explicitly */
	if (ag->mii_bus->reset) {
		FUNC7(&ag->mii_bus->mdio_lock);
		ag->mii_bus->reset(ag->mii_bus);
		FUNC8(&ag->mii_bus->mdio_lock);
	}

	if (pdata->switch_data)
		return FUNC0(ag);

	if (pdata->phy_mask)
		return FUNC3(ag);

	return FUNC2(ag);
}