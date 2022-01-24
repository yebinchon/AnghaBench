#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ active_count; scalar_t__ regd_count; } ;
struct TYPE_5__ {TYPE_3__* as_snap; struct TYPE_5__* as_next; } ;
typedef  TYPE_1__ ActiveSnapshotElt ;

/* Variables and functions */
 TYPE_1__* ActiveSnapshot ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * OldestActiveSnapshot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(void)
{
	ActiveSnapshotElt *newstack;

	newstack = ActiveSnapshot->as_next;

	FUNC0(ActiveSnapshot->as_snap->active_count > 0);

	ActiveSnapshot->as_snap->active_count--;

	if (ActiveSnapshot->as_snap->active_count == 0 &&
		ActiveSnapshot->as_snap->regd_count == 0)
		FUNC1(ActiveSnapshot->as_snap);

	FUNC3(ActiveSnapshot);
	ActiveSnapshot = newstack;
	if (ActiveSnapshot == NULL)
		OldestActiveSnapshot = NULL;

	FUNC2();
}