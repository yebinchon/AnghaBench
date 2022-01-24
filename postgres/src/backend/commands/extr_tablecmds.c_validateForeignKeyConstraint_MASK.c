#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trig ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_8__ {int tg_event; TYPE_2__* tg_trigger; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/  tg_trigtuple; int /*<<< orphan*/  tg_relation; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ TriggerData ;
struct TYPE_9__ {char* tgname; int tgisinternal; int tgdeferrable; int tginitdeferred; int /*<<< orphan*/ * context; void* tgconstraint; void* tgconstrindid; int /*<<< orphan*/  tgconstrrelid; int /*<<< orphan*/  tgenabled; int /*<<< orphan*/  tgoid; } ;
typedef  TYPE_2__ Trigger ;
typedef  int /*<<< orphan*/  TableScanDesc ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int TRIGGER_EVENT_INSERT ; 
 int TRIGGER_EVENT_ROW ; 
 int /*<<< orphan*/  TRIGGER_FIRES_ON_ORIGIN ; 
 int /*<<< orphan*/  T_TriggerData ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 TYPE_2__* fcinfo ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(char *conname,
							 Relation rel,
							 Relation pkrel,
							 Oid pkindOid,
							 Oid constraintOid)
{
	TupleTableSlot *slot;
	TableScanDesc scan;
	Trigger		trig;
	Snapshot	snapshot;
	MemoryContext oldcxt;
	MemoryContext perTupCxt;

	FUNC16(DEBUG1,
			(FUNC17("validating foreign key constraint \"%s\"", conname)));

	/*
	 * Build a trigger call structure; we'll need it either way.
	 */
	FUNC6(&trig, 0, sizeof(trig));
	trig.tgoid = InvalidOid;
	trig.tgname = conname;
	trig.tgenabled = TRIGGER_FIRES_ON_ORIGIN;
	trig.tgisinternal = true;
	trig.tgconstrrelid = FUNC13(pkrel);
	trig.tgconstrindid = pkindOid;
	trig.tgconstraint = constraintOid;
	trig.tgdeferrable = false;
	trig.tginitdeferred = false;
	/* we needn't fill in remaining fields */

	/*
	 * See if we can do it with a single LEFT JOIN query.  A false result
	 * indicates we must proceed with the fire-the-trigger method.
	 */
	if (FUNC11(&trig, rel, pkrel))
		return;

	/*
	 * Scan through each tuple, calling RI_FKey_check_ins (insert trigger) as
	 * if that tuple had just been inserted.  If any of those fail, it should
	 * ereport(ERROR) and that's that.
	 */
	snapshot = FUNC12(FUNC4());
	slot = FUNC21(rel, NULL);
	scan = FUNC18(rel, snapshot, 0, NULL);

	perTupCxt = FUNC0(CurrentMemoryContext,
									  "validateForeignKeyConstraint",
									  ALLOCSET_SMALL_SIZES);
	oldcxt = FUNC9(perTupCxt);

	while (FUNC20(scan, ForwardScanDirection, slot))
	{
		FUNC5(fcinfo, 0);
		TriggerData trigdata;

		FUNC1();

		/*
		 * Make a call to the trigger function
		 *
		 * No parameters are passed, but we do set a context
		 */
		FUNC6(fcinfo, 0, FUNC14(0));

		/*
		 * We assume RI_FKey_check_ins won't look at flinfo...
		 */
		trigdata.type = T_TriggerData;
		trigdata.tg_event = TRIGGER_EVENT_INSERT | TRIGGER_EVENT_ROW;
		trigdata.tg_relation = rel;
		trigdata.tg_trigtuple = FUNC3(slot, false, NULL);
		trigdata.tg_trigslot = slot;
		trigdata.tg_newtuple = NULL;
		trigdata.tg_newslot = NULL;
		trigdata.tg_trigger = &trig;

		fcinfo->context = (Node *) &trigdata;

		FUNC10(fcinfo);

		FUNC8(perTupCxt);
	}

	FUNC9(oldcxt);
	FUNC7(perTupCxt);
	FUNC19(scan);
	FUNC15(snapshot);
	FUNC2(slot);
}