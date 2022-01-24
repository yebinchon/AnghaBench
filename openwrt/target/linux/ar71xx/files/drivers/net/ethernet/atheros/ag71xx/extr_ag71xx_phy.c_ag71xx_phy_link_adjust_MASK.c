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
struct phy_device {scalar_t__ link; scalar_t__ duplex; scalar_t__ speed; } ;
struct net_device {int dummy; } ;
struct ag71xx {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; int /*<<< orphan*/  lock; struct phy_device* phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 struct ag71xx* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ag71xx *ag = FUNC1(dev);
	struct phy_device *phydev = ag->phy_dev;
	unsigned long flags;
	int status_change = 0;

	FUNC2(&ag->lock, flags);

	if (phydev->link) {
		if (ag->duplex != phydev->duplex
		    || ag->speed != phydev->speed) {
			status_change = 1;
		}
	}

	if (phydev->link != ag->link)
		status_change = 1;

	ag->link = phydev->link;
	ag->duplex = phydev->duplex;
	ag->speed = phydev->speed;

	if (status_change)
		FUNC0(ag);

	FUNC3(&ag->lock, flags);
}