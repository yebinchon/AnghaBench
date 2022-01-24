#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* control; } ;
typedef  TYPE_2__ dsa_area ;
struct TYPE_5__ {int refcnt; int pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(dsa_area *area)
{
	FUNC2(FUNC1(area), LW_EXCLUSIVE);
	FUNC0(area->control->refcnt > 1);
	if (!area->control->pinned)
	{
		FUNC3(FUNC1(area));
		FUNC4(ERROR, "dsa_area not pinned");
	}
	area->control->pinned = false;
	--area->control->refcnt;
	FUNC3(FUNC1(area));
}