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
struct TYPE_13__ {int /*<<< orphan*/  tgname; int /*<<< orphan*/  oid; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_11__ {int /*<<< orphan*/  subname; int /*<<< orphan*/  newname; int /*<<< orphan*/  relation; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_trigger ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgname ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RangeVarCallbackForRenameTrigger ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  TriggerRelidNameIndexId ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC23(RenameStmt *stmt)
{
	Oid			tgoid;
	Relation	targetrel;
	Relation	tgrel;
	HeapTuple	tuple;
	SysScanDesc tgscan;
	ScanKeyData key[2];
	Oid			relid;
	ObjectAddress address;

	/*
	 * Look up name, check permissions, and acquire lock (which we will NOT
	 * release until end of transaction).
	 */
	relid = FUNC8(stmt->relation, AccessExclusiveLock,
									 0,
									 RangeVarCallbackForRenameTrigger,
									 NULL);

	/* Have lock already, so just need to build relcache entry. */
	targetrel = FUNC17(relid, NoLock);

	/*
	 * Scan pg_trigger twice for existing triggers on relation.  We do this in
	 * order to ensure a trigger does not exist with newname (The unique index
	 * on tgrelid/tgname would complain anyway) and to ensure a trigger does
	 * exist with oldname.
	 *
	 * NOTE that this is cool only because we have AccessExclusiveLock on the
	 * relation, so the trigger set won't be changing underneath us.
	 */
	tgrel = FUNC22(TriggerRelationId, RowExclusiveLock);

	/*
	 * First pass -- look for name conflict
	 */
	FUNC10(&key[0],
				Anum_pg_trigger_tgrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(relid));
	FUNC10(&key[1],
				Anum_pg_trigger_tgname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC7(stmt->newname));
	tgscan = FUNC18(tgrel, TriggerRelidNameIndexId, true,
								NULL, 2, key);
	if (FUNC3(tuple = FUNC20(tgscan)))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC13("trigger \"%s\" for relation \"%s\" already exists",
						stmt->newname, FUNC9(targetrel))));
	FUNC19(tgscan);

	/*
	 * Second pass -- look for trigger existing with oldname and update
	 */
	FUNC10(&key[0],
				Anum_pg_trigger_tgrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(relid));
	FUNC10(&key[1],
				Anum_pg_trigger_tgname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC7(stmt->subname));
	tgscan = FUNC18(tgrel, TriggerRelidNameIndexId, true,
								NULL, 2, key);
	if (FUNC3(tuple = FUNC20(tgscan)))
	{
		Form_pg_trigger trigform;

		/*
		 * Update pg_trigger tuple with new tgname.
		 */
		tuple = FUNC14(tuple);	/* need a modifiable copy */
		trigform = (Form_pg_trigger) FUNC2(tuple);
		tgoid = trigform->oid;

		FUNC15(&trigform->tgname,
				   stmt->newname);

		FUNC1(tgrel, &tuple->t_self, tuple);

		FUNC4(TriggerRelationId,
								  tgoid, 0);

		/*
		 * Invalidate relation's relcache entry so that other backends (and
		 * this one too!) are sent SI message to make them rebuild relcache
		 * entries.  (Ideally this should happen automatically...)
		 */
		FUNC0(targetrel);
	}
	else
	{
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC13("trigger \"%s\" for table \"%s\" does not exist",
						stmt->subname, FUNC9(targetrel))));
	}

	FUNC5(address, TriggerRelationId, tgoid);

	FUNC19(tgscan);

	FUNC21(tgrel, RowExclusiveLock);

	/*
	 * Close rel, but keep exclusive lock!
	 */
	FUNC16(targetrel, NoLock);

	return address;
}