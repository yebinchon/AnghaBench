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
struct ag71xx_mdio {TYPE_1__* mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_ADDR ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CFG ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CMD ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_MII_IND ; 
 int /*<<< orphan*/  AG71XX_REG_MII_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx_mdio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ag71xx_mdio *am)
{
	FUNC0("%s: mii_cfg=%08x, mii_cmd=%08x, mii_addr=%08x\n",
		am->mii_bus->name,
		FUNC1(am, AG71XX_REG_MII_CFG),
		FUNC1(am, AG71XX_REG_MII_CMD),
		FUNC1(am, AG71XX_REG_MII_ADDR));
	FUNC0("%s: mii_ctrl=%08x, mii_status=%08x, mii_ind=%08x\n",
		am->mii_bus->name,
		FUNC1(am, AG71XX_REG_MII_CTRL),
		FUNC1(am, AG71XX_REG_MII_STATUS),
		FUNC1(am, AG71XX_REG_MII_IND));
}