#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* rd_index; int /*<<< orphan*/  rd_indextuple; TYPE_1__* rd_indam; } ;
struct TYPE_10__ {scalar_t__ indrelid; int /*<<< orphan*/  indisvalid; } ;
struct TYPE_9__ {int /*<<< orphan*/  amclusterable; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(Relation OldHeap, Oid indexOid, bool recheck, LOCKMODE lockmode)
{
	Relation	OldIndex;

	OldIndex = FUNC7(indexOid, lockmode);

	/*
	 * Check that index is in fact an index on the given relation
	 */
	if (OldIndex->rd_index == NULL ||
		OldIndex->rd_index->indrelid != FUNC1(OldHeap))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC4("\"%s\" is not an index for table \"%s\"",
						FUNC0(OldIndex),
						FUNC0(OldHeap))));

	/* Index AM must allow clustering */
	if (!OldIndex->rd_indam->amclusterable)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("cannot cluster on index \"%s\" because access method does not support clustering",
						FUNC0(OldIndex))));

	/*
	 * Disallow clustering on incomplete indexes (those that might not index
	 * every row of the relation).  We could relax this by making a separate
	 * seqscan pass over the table to copy the missing rows, but that seems
	 * expensive and tedious.
	 */
	if (!FUNC5(OldIndex->rd_indextuple, Anum_pg_index_indpred, NULL))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("cannot cluster on partial index \"%s\"",
						FUNC0(OldIndex))));

	/*
	 * Disallow if index is left over from a failed CREATE INDEX CONCURRENTLY;
	 * it might well not contain entries for every heap row, or might not even
	 * be internally consistent.  (But note that we don't check indcheckxmin;
	 * the worst consequence of following broken HOT chains would be that we
	 * might put recently-dead tuples out-of-order in the new table, and there
	 * is little harm in that.)
	 */
	if (!OldIndex->rd_index->indisvalid)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("cannot cluster on invalid index \"%s\"",
						FUNC0(OldIndex))));

	/* Drop relcache refcnt on OldIndex, but keep lock */
	FUNC6(OldIndex, NoLock);
}