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
struct gsw_mt753x {int /*<<< orphan*/  list; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt753x_devs ; 
 int /*<<< orphan*/  mt753x_devs_lock ; 
 int /*<<< orphan*/  mt753x_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gsw_mt753x *gsw)
{
	FUNC2(&mt753x_devs_lock);
	gsw->id = mt753x_id++;
	FUNC0(&gsw->list);
	FUNC1(&gsw->list, &mt753x_devs);
	FUNC3(&mt753x_devs_lock);
}