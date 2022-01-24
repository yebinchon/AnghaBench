#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_24__ {int /*<<< orphan*/  es_tupleTable; int /*<<< orphan*/  es_result_relation_info; } ;
struct TYPE_21__ {scalar_t__ replident; } ;
struct TYPE_23__ {int /*<<< orphan*/  localrel; TYPE_1__ remoterel; } ;
struct TYPE_22__ {int /*<<< orphan*/  changed; int /*<<< orphan*/  values; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  LockTupleExclusive ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 TYPE_4__* FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC36(StringInfo s)
{
	LogicalRepRelMapEntry *rel;
	LogicalRepRelId relid;
	Oid			idxoid;
	EState	   *estate;
	EPQState	epqstate;
	LogicalRepTupleData oldtup;
	LogicalRepTupleData newtup;
	bool		has_oldtup;
	TupleTableSlot *localslot;
	TupleTableSlot *remoteslot;
	bool		found;
	MemoryContext oldctx;

	FUNC28();

	relid = FUNC29(s, &has_oldtup, &oldtup,
								   &newtup);
	rel = FUNC31(relid, RowExclusiveLock);
	if (!FUNC32(rel))
	{
		/*
		 * The relation can't become interesting in the middle of the
		 * transaction so it's safe to unlock it.
		 */
		FUNC30(rel, RowExclusiveLock);
		return;
	}

	/* Check if we can do the update. */
	FUNC25(rel);

	/* Initialize the executor state. */
	estate = FUNC26(rel);
	remoteslot = FUNC9(estate,
										FUNC23(rel->localrel),
										&TTSOpsVirtual);
	localslot = FUNC35(rel->localrel,
								  &estate->es_tupleTable);
	FUNC4(&epqstate, estate, NULL, NIL, -1);

	FUNC20(FUNC16());
	FUNC10(estate->es_result_relation_info, false);

	/* Build the search tuple. */
	oldctx = FUNC17(FUNC14(estate));
	FUNC34(remoteslot, rel,
						has_oldtup ? oldtup.values : newtup.values);
	FUNC17(oldctx);

	/*
	 * Try to find tuple using either replica identity index, primary key or
	 * if needed, sequential scan.
	 */
	idxoid = FUNC15(rel->localrel);
	FUNC1(FUNC18(idxoid) ||
		   (rel->remoterel.replident == REPLICA_IDENTITY_FULL && has_oldtup));

	if (FUNC18(idxoid))
		found = FUNC21(rel->localrel, idxoid,
											 LockTupleExclusive,
											 remoteslot, localslot);
	else
		found = FUNC22(rel->localrel, LockTupleExclusive,
										 remoteslot, localslot);

	FUNC6(remoteslot);

	/*
	 * Tuple found.
	 *
	 * Note this will fail if there are other conflicting unique indexes.
	 */
	if (found)
	{
		/* Process and store remote tuple in the slot */
		oldctx = FUNC17(FUNC14(estate));
		FUNC8(remoteslot, localslot);
		FUNC33(remoteslot, rel, newtup.values, newtup.changed);
		FUNC17(oldctx);

		FUNC5(&epqstate, remoteslot);

		/* Do the actual update. */
		FUNC12(estate, &epqstate, localslot, remoteslot);
	}
	else
	{
		/*
		 * The tuple to be updated could not be found.
		 *
		 * TODO what to do here, change the log level to LOG perhaps?
		 */
		FUNC27(DEBUG1,
			 "logical replication did not find row for update "
			 "in replication target relation \"%s\"",
			 FUNC24(rel->localrel));
	}

	/* Cleanup. */
	FUNC7(estate->es_result_relation_info);
	FUNC19();

	/* Handle queued AFTER triggers. */
	FUNC0(estate);

	FUNC3(&epqstate);
	FUNC11(estate->es_tupleTable, false);
	FUNC13(estate);

	FUNC30(rel, NoLock);

	FUNC2();
}