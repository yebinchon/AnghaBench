#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int parallel_safe; int /*<<< orphan*/ * targetlist; } ;
typedef  TYPE_1__ Plan ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Plan *
FUNC3(Plan *subplan, List *tlist, bool tlist_parallel_safe)
{
	/*
	 * If the top plan node can't do projections and its existing target list
	 * isn't already what we need, we need to add a Result node to help it
	 * along.
	 */
	if (!FUNC1(subplan) &&
		!FUNC2(tlist, subplan->targetlist))
		subplan = FUNC0(subplan, tlist,
										 subplan->parallel_safe &&
										 tlist_parallel_safe);
	else
	{
		/* Else we can just replace the plan node's tlist */
		subplan->targetlist = tlist;
		subplan->parallel_safe &= tlist_parallel_safe;
	}
	return subplan;
}