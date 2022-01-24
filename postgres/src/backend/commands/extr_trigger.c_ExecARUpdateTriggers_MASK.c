#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_11__ {scalar_t__ trig_update_after_row; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_12__ {scalar_t__ tcs_update_new_table; scalar_t__ tcs_update_old_table; } ;
typedef  TYPE_2__ TransitionCaptureState ;
struct TYPE_13__ {TYPE_1__* ri_TrigDesc; } ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockTupleExclusive ; 
 int /*<<< orphan*/  TRIGGER_EVENT_UPDATE ; 

void
FUNC7(EState *estate, ResultRelInfo *relinfo,
					 ItemPointer tupleid,
					 HeapTuple fdw_trigtuple,
					 TupleTableSlot *newslot,
					 List *recheckIndexes,
					 TransitionCaptureState *transition_capture)
{
	TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
	TupleTableSlot *oldslot = FUNC3(estate, relinfo);

	FUNC1(oldslot);

	if ((trigdesc && trigdesc->trig_update_after_row) ||
		(transition_capture &&
		 (transition_capture->tcs_update_old_table ||
		  transition_capture->tcs_update_new_table)))
	{
		/*
		 * Note: if the UPDATE is converted into a DELETE+INSERT as part of
		 * update-partition-key operation, then this function is also called
		 * separately for DELETE and INSERT to capture transition table rows.
		 * In such case, either old tuple or new tuple can be NULL.
		 */
		if (fdw_trigtuple == NULL && FUNC6(tupleid))
			FUNC5(estate,
							   NULL,
							   relinfo,
							   tupleid,
							   LockTupleExclusive,
							   oldslot,
							   NULL);
		else if (fdw_trigtuple != NULL)
			FUNC2(fdw_trigtuple, oldslot, false);

		FUNC0(estate, relinfo, TRIGGER_EVENT_UPDATE,
							  true, oldslot, newslot, recheckIndexes,
							  FUNC4(relinfo, estate),
							  transition_capture);
	}
}