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
typedef  int u32 ;
struct mii_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mii_bus*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static bool
FUNC4(struct mii_bus *bus)
{
	unsigned int i, found_phys = 0;

	for (i = 0; i < 5; i++) {
		u32 phy_id;

		phy_id = FUNC2(bus, i, MII_PHYSID1) << 16;
		phy_id |= FUNC2(bus, i, MII_PHYSID2);
		if (FUNC0(phy_id)) {
			found_phys++;
		} else if (phy_id) {
			FUNC3("ar8xxx: unknown PHY at %s:%02x id:%08x\n",
				 FUNC1(&bus->dev), i, phy_id);
		}
	}
	return !!found_phys;
}