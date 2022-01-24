#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_20__ {int /*<<< orphan*/  es_tupleTable; int /*<<< orphan*/  es_result_relation_info; } ;
struct TYPE_19__ {int /*<<< orphan*/  localrel; } ;
struct TYPE_18__ {int /*<<< orphan*/  values; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ LogicalRepTupleData ;
typedef  TYPE_2__ LogicalRepRelMapEntry ;
typedef  int /*<<< orphan*/  LogicalRepRelId ;
typedef  TYPE_3__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 TYPE_3__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(StringInfo s)
{
	LogicalRepRelMapEntry *rel;
	LogicalRepTupleData newtup;
	LogicalRepRelId relid;
	EState	   *estate;
	TupleTableSlot *remoteslot;
	MemoryContext oldctx;

	FUNC15();

	relid = FUNC16(s, &newtup);
	rel = FUNC18(relid, RowExclusiveLock);
	if (!FUNC19(rel))
	{
		/*
		 * The relation can't become interesting in the middle of the
		 * transaction so it's safe to unlock it.
		 */
		FUNC17(rel, RowExclusiveLock);
		return;
	}

	/* Initialize the executor state. */
	estate = FUNC14(rel);
	remoteslot = FUNC3(estate,
										FUNC13(rel->localrel),
										&TTSOpsVirtual);

	/* Input functions may need an active snapshot, so get one */
	FUNC12(FUNC9());

	/* Process and store remote tuple in the slot */
	oldctx = FUNC10(FUNC8(estate));
	FUNC21(remoteslot, rel, newtup.values);
	FUNC20(rel, estate, remoteslot);
	FUNC10(oldctx);

	FUNC4(estate->es_result_relation_info, false);

	/* Do the insert. */
	FUNC6(estate, remoteslot);

	/* Cleanup. */
	FUNC2(estate->es_result_relation_info);
	FUNC11();

	/* Handle queued AFTER triggers. */
	FUNC0(estate);

	FUNC5(estate->es_tupleTable, false);
	FUNC7(estate);

	FUNC17(rel, NoLock);

	FUNC1();
}