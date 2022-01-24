#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_13__ {int numtriggers; TYPE_3__* triggers; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_14__ {int tg_event; TYPE_3__* tg_trigger; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/ * tg_trigtuple; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/ * tg_newtable; int /*<<< orphan*/ * tg_oldtable; int /*<<< orphan*/  tg_relation; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_15__ {int /*<<< orphan*/  tgtype; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_16__ {int /*<<< orphan*/  ri_TrigInstrument; int /*<<< orphan*/  ri_TrigFunctions; int /*<<< orphan*/  ri_RelationDesc; int /*<<< orphan*/  ri_junkFilter; TYPE_1__* ri_TrigDesc; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  EPQState ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int TRIGGER_EVENT_BEFORE ; 
 int TRIGGER_EVENT_ROW ; 
 int TRIGGER_EVENT_UPDATE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_ROW ; 
 int /*<<< orphan*/  TRIGGER_TYPE_UPDATE ; 
 int /*<<< orphan*/  T_TriggerData ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

bool
FUNC17(EState *estate, EPQState *epqstate,
					 ResultRelInfo *relinfo,
					 ItemPointer tupleid,
					 HeapTuple fdw_trigtuple,
					 TupleTableSlot *newslot)
{
	TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
	TupleTableSlot *oldslot = FUNC6(estate, relinfo);
	HeapTuple	newtuple = NULL;
	HeapTuple	trigtuple;
	bool		should_free_trig = false;
	bool		should_free_new = false;
	TriggerData LocTriggerData;
	int			i;
	Bitmapset  *updatedCols;
	LockTupleMode lockmode;

	/* Determine lock mode to use */
	lockmode = FUNC8(estate, relinfo);

	FUNC0(FUNC12(fdw_trigtuple) ^ FUNC13(tupleid));
	if (fdw_trigtuple == NULL)
	{
		TupleTableSlot *epqslot_candidate = NULL;

		/* get a copy of the on-disk tuple we are planning to update */
		if (!FUNC11(estate, epqstate, relinfo, tupleid,
								lockmode, oldslot, &epqslot_candidate))
			return false;		/* cancel the update action */

		/*
		 * In READ COMMITTED isolation level it's possible that target tuple
		 * was changed due to concurrent update.  In that case we have a raw
		 * subplan output tuple in newSlot, and need to run it through the
		 * junk filter to produce an insertable tuple.
		 *
		 * Caution: more than likely, the passed-in slot is the same as the
		 * junkfilter's output slot, so we are clobbering the original value
		 * of slottuple by doing the filtering.  This is OK since neither we
		 * nor our caller have any more interest in the prior contents of that
		 * slot.
		 */
		if (epqslot_candidate != NULL)
		{
			TupleTableSlot *epqslot_clean;

			epqslot_clean = FUNC4(relinfo->ri_junkFilter, epqslot_candidate);

			if (newslot != epqslot_clean)
				FUNC2(newslot, epqslot_clean);
		}

		trigtuple = FUNC3(oldslot, true, &should_free_trig);
	}
	else
	{
		FUNC5(fdw_trigtuple, oldslot, false);
		trigtuple = fdw_trigtuple;
	}

	LocTriggerData.type = T_TriggerData;
	LocTriggerData.tg_event = TRIGGER_EVENT_UPDATE |
		TRIGGER_EVENT_ROW |
		TRIGGER_EVENT_BEFORE;
	LocTriggerData.tg_relation = relinfo->ri_RelationDesc;
	LocTriggerData.tg_oldtable = NULL;
	LocTriggerData.tg_newtable = NULL;
	updatedCols = FUNC9(relinfo, estate);
	for (i = 0; i < trigdesc->numtriggers; i++)
	{
		Trigger    *trigger = &trigdesc->triggers[i];
		HeapTuple	oldtuple;

		if (!FUNC14(trigger->tgtype,
								  TRIGGER_TYPE_ROW,
								  TRIGGER_TYPE_BEFORE,
								  TRIGGER_TYPE_UPDATE))
			continue;
		if (!FUNC15(estate, relinfo, trigger, LocTriggerData.tg_event,
							updatedCols, oldslot, newslot))
			continue;

		if (!newtuple)
			newtuple = FUNC3(newslot, true, &should_free_new);

		LocTriggerData.tg_trigslot = oldslot;
		LocTriggerData.tg_trigtuple = trigtuple;
		LocTriggerData.tg_newtuple = oldtuple = newtuple;
		LocTriggerData.tg_newslot = newslot;
		LocTriggerData.tg_trigger = trigger;
		newtuple = FUNC1(&LocTriggerData,
									   i,
									   relinfo->ri_TrigFunctions,
									   relinfo->ri_TrigInstrument,
									   FUNC10(estate));

		if (newtuple == NULL)
		{
			if (should_free_trig)
				FUNC16(trigtuple);
			if (should_free_new)
				FUNC16(oldtuple);
			return false;		/* "do nothing" */
		}
		else if (newtuple != oldtuple)
		{
			FUNC5(newtuple, newslot, false);

			/*
			 * If the tuple returned by the trigger / being stored, is the old
			 * row version, and the heap tuple passed to the trigger was
			 * allocated locally, materialize the slot. Otherwise we might
			 * free it while still referenced by the slot.
			 */
			if (should_free_trig && newtuple == trigtuple)
				FUNC7(newslot);

			if (should_free_new)
				FUNC16(oldtuple);

			/* signal tuple should be re-fetched if used */
			newtuple = NULL;
		}
	}
	if (should_free_trig)
		FUNC16(trigtuple);

	return true;
}