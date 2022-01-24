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
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  EPQState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

TupleTableSlot *
FUNC8(EPQState *epqstate, Relation relation,
			 Index rti, TupleTableSlot *inputslot)
{
	TupleTableSlot *slot;
	TupleTableSlot *testslot;

	FUNC0(rti > 0);

	/*
	 * Need to run a recheck subquery.  Initialize or reinitialize EPQ state.
	 */
	FUNC1(epqstate);

	/*
	 * Callers will often use the EvalPlanQualSlot to store the tuple to avoid
	 * an unnecessary copy.
	 */
	testslot = FUNC3(epqstate, relation, rti);
	if (testslot != inputslot)
		FUNC5(testslot, inputslot);

	/*
	 * Run the EPQ query.  We assume it will return at most one tuple.
	 */
	slot = FUNC2(epqstate);

	/*
	 * If we got a tuple, force the slot to materialize the tuple so that it
	 * is not dependent on any local state in the EPQ query (in particular,
	 * it's highly likely that the slot contains references to any pass-by-ref
	 * datums that may be present in copyTuple).  As with the next step, this
	 * is to guard against early re-use of the EPQ query.
	 */
	if (!FUNC7(slot))
		FUNC6(slot);

	/*
	 * Clear out the test tuple.  This is needed in case the EPQ query is
	 * re-used to test a tuple for a different relation.  (Not clear that can
	 * really happen, but let's be safe.)
	 */
	FUNC4(testslot);

	return slot;
}