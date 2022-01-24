#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ss_ScanTupleSlot; } ;
struct TYPE_10__ {int grp_done; TYPE_1__ ss; } ;
struct TYPE_9__ {int /*<<< orphan*/ * chgParam; } ;
typedef  TYPE_2__ PlanState ;
typedef  TYPE_3__ GroupState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 

void
FUNC3(GroupState *node)
{
	PlanState  *outerPlan = FUNC2(node);

	node->grp_done = false;
	/* must clear first tuple */
	FUNC0(node->ss.ss_ScanTupleSlot);

	/*
	 * if chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.
	 */
	if (outerPlan->chgParam == NULL)
		FUNC1(outerPlan);
}