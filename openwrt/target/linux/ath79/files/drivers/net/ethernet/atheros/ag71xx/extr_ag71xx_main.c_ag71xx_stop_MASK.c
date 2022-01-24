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
struct net_device {int dummy; } ;
struct ag71xx {int /*<<< orphan*/  lock; scalar_t__ link; int /*<<< orphan*/  phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	unsigned long flags;
	struct ag71xx *ag = FUNC2(dev);

	FUNC3(dev);
	FUNC4(ag->phy_dev);

	FUNC5(&ag->lock, flags);
	if (ag->link) {
		ag->link = 0;
		FUNC1(ag);
	}
	FUNC6(&ag->lock, flags);

	FUNC0(ag);

	return 0;
}