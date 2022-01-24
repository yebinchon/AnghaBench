#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_22__ {int /*<<< orphan*/  es_tupleTable; int /*<<< orphan*/  es_result_relation_info; } ;
struct TYPE_19__ {scalar_t__ replident; } ;
struct TYPE_21__ {int /*<<< orphan*/  localrel; TYPE_1__ remoterel; } ;
struct TYPE_20__ {int /*<<< orphan*/  values; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ LogicalRepTupleData ;
typedef  TYPE_3__ LogicalRepRelMapEntry ;
typedef  int /*<<< orphan*/  LogicalRepRelId ;
typedef  TYPE_4__ EState ;
typedef  int /*<<< orphan*/  EPQState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  LockTupleExclusive ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 TYPE_4__* FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC33(StringInfo s)
{
	LogicalRepRelMapEntry *rel;
	LogicalRepTupleData oldtup;
	LogicalRepRelId relid;
	Oid			idxoid;
	EState	   *estate;
	EPQState	epqstate;
	TupleTableSlot *remoteslot;
	TupleTableSlot *localslot;
	bool		found;
	MemoryContext oldctx;

	FUNC26();

	relid = FUNC27(s, &oldtup);
	rel = FUNC29(relid, RowExclusiveLock);
	if (!FUNC30(rel))
	{
		/*
		 * The relation can't become interesting in the middle of the
		 * transaction so it's safe to unlock it.
		 */
		FUNC28(rel, RowExclusiveLock);
		return;
	}

	/* Check if we can do the delete. */
	FUNC23(rel);

	/* Initialize the executor state. */
	estate = FUNC24(rel);
	remoteslot = FUNC7(estate,
										FUNC21(rel->localrel),
										&TTSOpsVirtual);
	localslot = FUNC32(rel->localrel,
								  &estate->es_tupleTable);
	FUNC4(&epqstate, estate, NULL, NIL, -1);

	FUNC18(FUNC14());
	FUNC8(estate->es_result_relation_info, false);

	/* Find the tuple using the replica identity index. */
	oldctx = FUNC15(FUNC12(estate));
	FUNC31(remoteslot, rel, oldtup.values);
	FUNC15(oldctx);

	/*
	 * Try to find tuple using either replica identity index, primary key or
	 * if needed, sequential scan.
	 */
	idxoid = FUNC13(rel->localrel);
	FUNC1(FUNC16(idxoid) ||
		   (rel->remoterel.replident == REPLICA_IDENTITY_FULL));

	if (FUNC16(idxoid))
		found = FUNC19(rel->localrel, idxoid,
											 LockTupleExclusive,
											 remoteslot, localslot);
	else
		found = FUNC20(rel->localrel, LockTupleExclusive,
										 remoteslot, localslot);
	/* If found delete it. */
	if (found)
	{
		FUNC5(&epqstate, localslot);

		/* Do the actual delete. */
		FUNC10(estate, &epqstate, localslot);
	}
	else
	{
		/* The tuple to be deleted could not be found. */
		FUNC25(DEBUG1,
			 "logical replication could not find row for delete "
			 "in replication target relation \"%s\"",
			 FUNC22(rel->localrel));
	}

	/* Cleanup. */
	FUNC6(estate->es_result_relation_info);
	FUNC17();

	/* Handle queued AFTER triggers. */
	FUNC0(estate);

	FUNC3(&epqstate);
	FUNC9(estate->es_tupleTable, false);
	FUNC11(estate);

	FUNC28(rel, NoLock);

	FUNC2();
}