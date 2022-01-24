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
struct switch_dev {int dummy; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MV_PAGE_FIBER_SERDES ; 
 int /*<<< orphan*/  MV_REG_FIBER_SERDES ; 
 int FUNC0 (struct switch_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct switch_dev *dev)
{
	int bmcr = FUNC0(dev, MV_REG_FIBER_SERDES,
					   MV_PAGE_FIBER_SERDES, MII_BMCR);
	if (bmcr < 0)
		return;

	if (bmcr & BMCR_PDOWN)
		FUNC1(dev, MV_REG_FIBER_SERDES,
					 MV_PAGE_FIBER_SERDES, MII_BMCR,
					 bmcr & ~BMCR_PDOWN);
}