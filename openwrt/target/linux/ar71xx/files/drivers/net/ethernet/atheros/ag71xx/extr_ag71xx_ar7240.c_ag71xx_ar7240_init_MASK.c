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
struct ar7240sw {int /*<<< orphan*/  stats_lock; } ;
struct ag71xx {int /*<<< orphan*/  link_work; struct ar7240sw* phy_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ar7240sw* FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar7240sw*) ; 
 int /*<<< orphan*/  link_function ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ag71xx *ag)
{
	struct ar7240sw *as;

	as = FUNC1(ag);
	if (!as)
		return -ENODEV;

	ag->phy_priv = as;
	FUNC2(as);

	FUNC3(&as->stats_lock);
	FUNC0(&ag->link_work, link_function);

	return 0;
}