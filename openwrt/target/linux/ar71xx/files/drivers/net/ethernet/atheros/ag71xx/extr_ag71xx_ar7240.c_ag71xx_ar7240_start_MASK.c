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
struct ar7240sw {int /*<<< orphan*/  swdev; } ;
struct ag71xx {int duplex; int /*<<< orphan*/  link_work; TYPE_1__* dev; int /*<<< orphan*/  speed; struct ar7240sw* phy_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ar7240sw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar7240sw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct ag71xx *ag)
{
	struct ar7240sw *as = ag->phy_priv;

	FUNC2(as);

	ag->speed = SPEED_1000;
	ag->duplex = 1;

	FUNC1(as, ag->dev->dev_addr);
	FUNC0(&as->swdev);

	FUNC3(&ag->link_work, HZ / 10);
}