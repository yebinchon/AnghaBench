#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_10__ {int numtriggers; TYPE_3__* triggers; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_11__ {int tg_event; TYPE_3__* tg_trigger; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/ * tg_trigtuple; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/ * tg_newtable; int /*<<< orphan*/ * tg_oldtable; int /*<<< orphan*/  tg_relation; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_12__ {int /*<<< orphan*/  tgtype; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_13__ {int /*<<< orphan*/  ri_TrigInstrument; int /*<<< orphan*/  ri_TrigFunctions; int /*<<< orphan*/  ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int TRIGGER_EVENT_INSTEAD ; 
 int TRIGGER_EVENT_ROW ; 
 int TRIGGER_EVENT_UPDATE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSTEAD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_ROW ; 
 int /*<<< orphan*/  TRIGGER_TYPE_UPDATE ; 
 int /*<<< orphan*/  T_TriggerData ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool
FUNC8(EState *estate, ResultRelInfo *relinfo,
					 HeapTuple trigtuple, TupleTableSlot *newslot)
{
	TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
	TupleTableSlot *oldslot = FUNC3(estate, relinfo);
	HeapTuple	newtuple = NULL;
	bool		should_free;
	TriggerData LocTriggerData;
	int			i;

	LocTriggerData.type = T_TriggerData;
	LocTriggerData.tg_event = TRIGGER_EVENT_UPDATE |
		TRIGGER_EVENT_ROW |
		TRIGGER_EVENT_INSTEAD;
	LocTriggerData.tg_relation = relinfo->ri_RelationDesc;
	LocTriggerData.tg_oldtable = NULL;
	LocTriggerData.tg_newtable = NULL;

	FUNC2(trigtuple, oldslot, false);

	for (i = 0; i < trigdesc->numtriggers; i++)
	{
		Trigger    *trigger = &trigdesc->triggers[i];
		HeapTuple	oldtuple;

		if (!FUNC5(trigger->tgtype,
								  TRIGGER_TYPE_ROW,
								  TRIGGER_TYPE_INSTEAD,
								  TRIGGER_TYPE_UPDATE))
			continue;
		if (!FUNC6(estate, relinfo, trigger, LocTriggerData.tg_event,
							NULL, oldslot, newslot))
			continue;

		if (!newtuple)
			newtuple = FUNC1(newslot, true, &should_free);

		LocTriggerData.tg_trigslot = oldslot;
		LocTriggerData.tg_trigtuple = trigtuple;
		LocTriggerData.tg_newslot = newslot;
		LocTriggerData.tg_newtuple = oldtuple = newtuple;

		LocTriggerData.tg_trigger = trigger;
		newtuple = FUNC0(&LocTriggerData,
									   i,
									   relinfo->ri_TrigFunctions,
									   relinfo->ri_TrigInstrument,
									   FUNC4(estate));
		if (newtuple == NULL)
		{
			return false;		/* "do nothing" */
		}
		else if (newtuple != oldtuple)
		{
			FUNC2(newtuple, newslot, false);

			if (should_free)
				FUNC7(oldtuple);

			/* signal tuple should be re-fetched if used */
			newtuple = NULL;
		}
	}

	return true;
}