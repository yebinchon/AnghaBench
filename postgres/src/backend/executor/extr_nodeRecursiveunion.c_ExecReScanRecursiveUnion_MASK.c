#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_13__ {scalar_t__ numCols; int /*<<< orphan*/  wtParam; } ;
struct TYPE_11__ {scalar_t__ plan; } ;
struct TYPE_12__ {int recursing; int intermediate_empty; int /*<<< orphan*/  intermediate_table; int /*<<< orphan*/  working_table; int /*<<< orphan*/  hashtable; scalar_t__ tableContext; TYPE_1__ ps; } ;
typedef  TYPE_2__ RecursiveUnionState ;
typedef  TYPE_3__ RecursiveUnion ;
typedef  TYPE_4__ PlanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 
 TYPE_4__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(RecursiveUnionState *node)
{
	PlanState  *outerPlan = FUNC5(node);
	PlanState  *innerPlan = FUNC4(node);
	RecursiveUnion *plan = (RecursiveUnion *) node->ps.plan;

	/*
	 * Set recursive term's chgParam to tell it that we'll modify the working
	 * table and therefore it has to rescan.
	 */
	innerPlan->chgParam = FUNC3(innerPlan->chgParam, plan->wtParam);

	/*
	 * if chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.  Because of above, we only have to do this to the
	 * non-recursive term.
	 */
	if (outerPlan->chgParam == NULL)
		FUNC0(outerPlan);

	/* Release any hashtable storage */
	if (node->tableContext)
		FUNC1(node->tableContext);

	/* Empty hashtable if needed */
	if (plan->numCols > 0)
		FUNC2(node->hashtable);

	/* reset processing state */
	node->recursing = false;
	node->intermediate_empty = true;
	FUNC6(node->working_table);
	FUNC6(node->intermediate_table);
}