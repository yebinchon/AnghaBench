#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_11__ {int /*<<< orphan*/ * es_query_dsa; } ;
struct TYPE_8__ {TYPE_4__* state; } ;
struct TYPE_10__ {scalar_t__ nreaders; int need_to_scan_locally; TYPE_2__* pei; TYPE_1__ ps; int /*<<< orphan*/ * funnel_slot; } ;
struct TYPE_9__ {int /*<<< orphan*/ * area; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ GatherState ;
typedef  TYPE_4__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC8(GatherState *gatherstate)
{
	PlanState  *outerPlan = FUNC7(gatherstate);
	TupleTableSlot *outerTupleSlot;
	TupleTableSlot *fslot = gatherstate->funnel_slot;
	HeapTuple	tup;

	while (gatherstate->nreaders > 0 || gatherstate->need_to_scan_locally)
	{
		FUNC0();

		if (gatherstate->nreaders > 0)
		{
			tup = FUNC6(gatherstate);

			if (FUNC4(tup))
			{
				FUNC3(tup, /* tuple to store */
								   fslot,	/* slot to store the tuple */
								   true);	/* pfree tuple when done with it */
				return fslot;
			}
		}

		if (gatherstate->need_to_scan_locally)
		{
			EState	   *estate = gatherstate->ps.state;

			/* Install our DSA area while executing the plan. */
			estate->es_query_dsa =
				gatherstate->pei ? gatherstate->pei->area : NULL;
			outerTupleSlot = FUNC2(outerPlan);
			estate->es_query_dsa = NULL;

			if (!FUNC5(outerTupleSlot))
				return outerTupleSlot;

			gatherstate->need_to_scan_locally = false;
		}
	}

	return FUNC1(fslot);
}