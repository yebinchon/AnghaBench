#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_11__ {int /*<<< orphan*/ * ecxt_innertuple; int /*<<< orphan*/ * ecxt_outertuple; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ps_ResultTupleSlot; TYPE_3__* ps_ExprContext; } ;
struct TYPE_10__ {int setop_done; scalar_t__ numOutput; int /*<<< orphan*/ * grp_firstTuple; int /*<<< orphan*/  eqfunction; TYPE_1__ ps; scalar_t__ pergroup; } ;
typedef  scalar_t__ SetOpStatePerGroup ;
typedef  TYPE_2__ SetOpState ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_3__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static TupleTableSlot *
FUNC11(SetOpState *setopstate)
{
	PlanState  *outerPlan;
	SetOpStatePerGroup pergroup;
	TupleTableSlot *outerslot;
	TupleTableSlot *resultTupleSlot;
	ExprContext *econtext = setopstate->ps.ps_ExprContext;

	/*
	 * get state info from node
	 */
	outerPlan = FUNC9(setopstate);
	pergroup = (SetOpStatePerGroup) setopstate->pergroup;
	resultTupleSlot = setopstate->ps.ps_ResultTupleSlot;

	/*
	 * We loop retrieving groups until we find one we should return
	 */
	while (!setopstate->setop_done)
	{
		/*
		 * If we don't already have the first tuple of the new group, fetch it
		 * from the outer plan.
		 */
		if (setopstate->grp_firstTuple == NULL)
		{
			outerslot = FUNC2(outerPlan);
			if (!FUNC5(outerslot))
			{
				/* Make a copy of the first input tuple */
				setopstate->grp_firstTuple = FUNC1(outerslot);
			}
			else
			{
				/* outer plan produced no tuples at all */
				setopstate->setop_done = true;
				return NULL;
			}
		}

		/*
		 * Store the copied first input tuple in the tuple table slot reserved
		 * for it.  The tuple will be deleted when it is cleared from the
		 * slot.
		 */
		FUNC4(setopstate->grp_firstTuple,
						   resultTupleSlot,
						   true);
		setopstate->grp_firstTuple = NULL;	/* don't keep two pointers */

		/* Initialize working state for a new input tuple group */
		FUNC8(pergroup);

		/* Count the first input tuple */
		FUNC6(pergroup,
					   FUNC7(setopstate, resultTupleSlot));

		/*
		 * Scan the outer plan until we exhaust it or cross a group boundary.
		 */
		for (;;)
		{
			outerslot = FUNC2(outerPlan);
			if (FUNC5(outerslot))
			{
				/* no more outer-plan tuples available */
				setopstate->setop_done = true;
				break;
			}

			/*
			 * Check whether we've crossed a group boundary.
			 */
			econtext->ecxt_outertuple = resultTupleSlot;
			econtext->ecxt_innertuple = outerslot;

			if (!FUNC3(setopstate->eqfunction, econtext))
			{
				/*
				 * Save the first input tuple of the next group.
				 */
				setopstate->grp_firstTuple = FUNC1(outerslot);
				break;
			}

			/* Still in same group, so count this tuple */
			FUNC6(pergroup,
						   FUNC7(setopstate, outerslot));
		}

		/*
		 * Done scanning input tuple group.  See if we should emit any copies
		 * of result tuple, and if so return the first copy.
		 */
		FUNC10(setopstate, pergroup);

		if (setopstate->numOutput > 0)
		{
			setopstate->numOutput--;
			return resultTupleSlot;
		}
	}

	/* No more groups */
	FUNC0(resultTupleSlot);
	return NULL;
}