#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ii_Concurrent; int ii_BrokenHotChain; int /*<<< orphan*/  ii_ReadyForInserts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ IndexInfo ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEX_CREATE_SET_READY ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid heapRelationId,
						 Oid indexRelationId)
{
	Relation	heapRel;
	Relation	indexRelation;
	IndexInfo  *indexInfo;

	/* This had better make sure that a snapshot is active */
	FUNC1(FUNC0());

	/* Open and lock the parent heap relation */
	heapRel = FUNC8(heapRelationId, ShareUpdateExclusiveLock);

	/* And the target index relation */
	indexRelation = FUNC5(indexRelationId, RowExclusiveLock);

	/*
	 * We have to re-build the IndexInfo struct, since it was lost in the
	 * commit of the transaction where this concurrent index was created at
	 * the catalog level.
	 */
	indexInfo = FUNC2(indexRelation);
	FUNC1(!indexInfo->ii_ReadyForInserts);
	indexInfo->ii_Concurrent = true;
	indexInfo->ii_BrokenHotChain = false;

	/* Now build the index */
	FUNC3(heapRel, indexRelation, indexInfo, false, true);

	/* Close both the relations, but keep the locks */
	FUNC7(heapRel, NoLock);
	FUNC4(indexRelation, NoLock);

	/*
	 * Update the pg_index row to mark the index as ready for inserts. Once we
	 * commit this transaction, any new transactions that open the table must
	 * insert new entries into the index for insertions and non-HOT updates.
	 */
	FUNC6(indexRelationId, INDEX_CREATE_SET_READY);
}