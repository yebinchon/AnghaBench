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
struct ag71xx_platform_data {scalar_t__ switch_data; scalar_t__ mii_bus_dev; } ;
struct ag71xx {int link; scalar_t__ phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 struct ag71xx_platform_data* FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct ag71xx *ag)
{
	struct ag71xx_platform_data *pdata = FUNC1(ag);

	if (ag->phy_dev) {
		FUNC3(ag->phy_dev);
	} else if (pdata->mii_bus_dev && pdata->switch_data) {
		FUNC0(ag);
	} else {
		ag->link = 1;
		FUNC2(ag);
	}
}