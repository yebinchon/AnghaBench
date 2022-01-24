#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_9__ {int numtriggers; TYPE_3__* triggers; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_10__ {int tg_event; TYPE_3__* tg_trigger; int /*<<< orphan*/ * tg_trigtuple; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/ * tg_newtable; int /*<<< orphan*/ * tg_oldtable; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/  tg_relation; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_11__ {int /*<<< orphan*/  tgtype; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_12__ {int /*<<< orphan*/  ri_TrigInstrument; int /*<<< orphan*/  ri_TrigFunctions; int /*<<< orphan*/  ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int TRIGGER_EVENT_BEFORE ; 
 int TRIGGER_EVENT_INSERT ; 
 int TRIGGER_EVENT_ROW ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSERT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_ROW ; 
 int /*<<< orphan*/  T_TriggerData ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool
FUNC7(EState *estate, ResultRelInfo *relinfo,
					 TupleTableSlot *slot)
{
	TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
	HeapTuple	newtuple = NULL;
	bool		should_free;
	TriggerData LocTriggerData;
	int			i;

	LocTriggerData.type = T_TriggerData;
	LocTriggerData.tg_event = TRIGGER_EVENT_INSERT |
		TRIGGER_EVENT_ROW |
		TRIGGER_EVENT_BEFORE;
	LocTriggerData.tg_relation = relinfo->ri_RelationDesc;
	LocTriggerData.tg_trigtuple = NULL;
	LocTriggerData.tg_newtuple = NULL;
	LocTriggerData.tg_trigslot = NULL;
	LocTriggerData.tg_newslot = NULL;
	LocTriggerData.tg_oldtable = NULL;
	LocTriggerData.tg_newtable = NULL;
	for (i = 0; i < trigdesc->numtriggers; i++)
	{
		Trigger    *trigger = &trigdesc->triggers[i];
		HeapTuple	oldtuple;

		if (!FUNC4(trigger->tgtype,
								  TRIGGER_TYPE_ROW,
								  TRIGGER_TYPE_BEFORE,
								  TRIGGER_TYPE_INSERT))
			continue;
		if (!FUNC5(estate, relinfo, trigger, LocTriggerData.tg_event,
							NULL, NULL, slot))
			continue;

		if (!newtuple)
			newtuple = FUNC1(slot, true, &should_free);

		LocTriggerData.tg_trigslot = slot;
		LocTriggerData.tg_trigtuple = oldtuple = newtuple;
		LocTriggerData.tg_trigger = trigger;
		newtuple = FUNC0(&LocTriggerData,
									   i,
									   relinfo->ri_TrigFunctions,
									   relinfo->ri_TrigInstrument,
									   FUNC3(estate));
		if (newtuple == NULL)
		{
			if (should_free)
				FUNC6(oldtuple);
			return false;		/* "do nothing" */
		}
		else if (newtuple != oldtuple)
		{
			FUNC2(newtuple, slot, false);

			if (should_free)
				FUNC6(oldtuple);

			/* signal tuple should be re-fetched if used */
			newtuple = NULL;
		}
	}

	return true;
}