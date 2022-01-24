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

/* Variables and functions */
 int AR7240_NUM_PHYS ; 
 int BMCR_RESET ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct mii_bus*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct mii_bus *bus)
{
	const unsigned int sleep_msecs = 20;
	int ret, elapsed, i;

	for (elapsed = sleep_msecs; elapsed <= 600;
	     elapsed += sleep_msecs) {
		FUNC1(sleep_msecs);
		for (i = 0; i < AR7240_NUM_PHYS; i++) {
			ret = FUNC0(bus, i, MII_BMCR);
			if (ret < 0)
				return ret;
			if (ret & BMCR_RESET)
				break;
			if (i == AR7240_NUM_PHYS - 1) {
				FUNC2(1000, 2000);
				return 0;
			}
		}
	}
	return -ETIMEDOUT;
}