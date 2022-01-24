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
struct ag71xx_mdio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_ADDR ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CMD ; 
 int /*<<< orphan*/  AG71XX_REG_MII_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int MII_ADDR_SHIFT ; 
 int MII_CMD_READ ; 
 int MII_CMD_WRITE ; 
 int FUNC1 (struct ag71xx_mdio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ag71xx_mdio*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx_mdio*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct ag71xx_mdio *am, int addr, int reg)
{
	int err;
	int ret;

	err = FUNC2(am);
	if (err)
		return 0xffff;

	FUNC3(am, AG71XX_REG_MII_CMD, MII_CMD_WRITE);
	FUNC3(am, AG71XX_REG_MII_ADDR,
			((addr & 0xff) << MII_ADDR_SHIFT) | (reg & 0xff));
	FUNC3(am, AG71XX_REG_MII_CMD, MII_CMD_READ);

	err = FUNC2(am);
	if (err)
		return 0xffff;

	ret = FUNC1(am, AG71XX_REG_MII_STATUS) & 0xffff;
	FUNC3(am, AG71XX_REG_MII_CMD, MII_CMD_WRITE);

	FUNC0("mii_read: addr=%04x, reg=%04x, value=%04x\n", addr, reg, ret);

	return ret;
}