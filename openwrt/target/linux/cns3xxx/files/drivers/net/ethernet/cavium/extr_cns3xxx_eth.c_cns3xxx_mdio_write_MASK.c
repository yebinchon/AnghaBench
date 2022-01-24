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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mii_bus*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdio_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int phy_id, int location, u16 val)
{
	unsigned long flags;
	int ret;

	FUNC1(&mdio_lock, flags);
	ret = FUNC0(bus, phy_id, location, 1, val);
	FUNC2(&mdio_lock, flags);
	return ret;
}