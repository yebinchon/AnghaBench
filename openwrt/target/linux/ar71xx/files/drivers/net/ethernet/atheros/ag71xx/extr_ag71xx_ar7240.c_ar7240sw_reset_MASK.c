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
struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  AR7240_MASK_CTRL_SOFT_RESET ; 
 int AR7240_NUM_PHYS ; 
 int AR7240_NUM_PORTS ; 
 int /*<<< orphan*/  AR7240_REG_MASK_CTRL ; 
 int BMCR_ANENABLE ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct ar7240sw*,int) ; 
 int FUNC1 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ar7240sw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ar7240sw *as)
{
	struct mii_bus *mii = as->mii_bus;
	int ret;
	int i;

	/* Set all ports to disabled state. */
	for (i = 0; i < AR7240_NUM_PORTS; i++)
		FUNC0(as, i);

	/* Wait for transmit queues to drain. */
	FUNC6(2000, 3000);

	/* Reset the switch. */
	FUNC4(mii, AR7240_REG_MASK_CTRL,
			   AR7240_MASK_CTRL_SOFT_RESET);

	ret = FUNC3(mii, AR7240_REG_MASK_CTRL,
				AR7240_MASK_CTRL_SOFT_RESET, 0, 1000);

	/* setup PHYs */
	for (i = 0; i < AR7240_NUM_PHYS; i++) {
		FUNC2(mii, i, MII_ADVERTISE,
				   ADVERTISE_ALL | ADVERTISE_PAUSE_CAP |
				   ADVERTISE_PAUSE_ASYM);
		FUNC2(mii, i, MII_BMCR,
				   BMCR_RESET | BMCR_ANENABLE);
	}
	ret = FUNC1(mii);
	if (ret)
		return ret;

	FUNC5(as);
	return ret;
}