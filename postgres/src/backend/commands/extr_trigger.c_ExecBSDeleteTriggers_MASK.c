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
struct TYPE_9__ {int numtriggers; TYPE_3__* triggers; int /*<<< orphan*/  trig_delete_before_statement; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_10__ {int tg_event; TYPE_3__* tg_trigger; int /*<<< orphan*/ * tg_newtable; int /*<<< orphan*/ * tg_oldtable; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/ * tg_trigtuple; int /*<<< orphan*/  tg_relation; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_11__ {int /*<<< orphan*/  tgtype; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_12__ {int /*<<< orphan*/  ri_TrigInstrument; int /*<<< orphan*/  ri_TrigFunctions; int /*<<< orphan*/  ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  scalar_t__ HeapTuple ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DELETE ; 
 int /*<<< orphan*/  ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TRIGGER_EVENT_BEFORE ; 
 int TRIGGER_EVENT_DELETE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_DELETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_STATEMENT ; 
 int /*<<< orphan*/  T_TriggerData ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(EState *estate, ResultRelInfo *relinfo)
{
	TriggerDesc *trigdesc;
	int			i;
	TriggerData LocTriggerData;

	trigdesc = relinfo->ri_TrigDesc;

	if (trigdesc == NULL)
		return;
	if (!trigdesc->trig_delete_before_statement)
		return;

	/* no-op if we already fired BS triggers in this context */
	if (FUNC5(FUNC2(relinfo->ri_RelationDesc),
								   CMD_DELETE))
		return;

	LocTriggerData.type = T_TriggerData;
	LocTriggerData.tg_event = TRIGGER_EVENT_DELETE |
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
		HeapTuple	newtuple;

		if (!FUNC3(trigger->tgtype,
								  TRIGGER_TYPE_STATEMENT,
								  TRIGGER_TYPE_BEFORE,
								  TRIGGER_TYPE_DELETE))
			continue;
		if (!FUNC4(estate, relinfo, trigger, LocTriggerData.tg_event,
							NULL, NULL, NULL))
			continue;

		LocTriggerData.tg_trigger = trigger;
		newtuple = FUNC0(&LocTriggerData,
									   i,
									   relinfo->ri_TrigFunctions,
									   relinfo->ri_TrigInstrument,
									   FUNC1(estate));

		if (newtuple)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
					 FUNC8("BEFORE STATEMENT trigger cannot return a value")));
	}
}