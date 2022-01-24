#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_14__ {int table_len; int /*<<< orphan*/  free_space; int /*<<< orphan*/  dead_tuple_count; int /*<<< orphan*/  dead_tuple_len; int /*<<< orphan*/  tuple_count; int /*<<< orphan*/  tuple_len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ pgstattuple_type ;
typedef  scalar_t__ TableScanDesc ;
struct TYPE_17__ {scalar_t__ rs_nblocks; int /*<<< orphan*/  rs_strategy; int /*<<< orphan*/  rs_cbuf; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_self; scalar_t__ t_len; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_13__ {scalar_t__ relam; } ;
typedef  int /*<<< orphan*/  SnapshotData ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* HeapScanDesc ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ HEAP_TABLE_AM_OID ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SnapshotAny ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_4__* FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static Datum
FUNC17(Relation rel, FunctionCallInfo fcinfo)
{
	TableScanDesc scan;
	HeapScanDesc hscan;
	HeapTuple	tuple;
	BlockNumber nblocks;
	BlockNumber block = 0;		/* next block to count free space in */
	BlockNumber tupblock;
	Buffer		buffer;
	pgstattuple_type stat = {0};
	SnapshotData SnapshotDirty;

	if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC12("only heap AM is supported")));

	/* Disable syncscan because we assume we scan from block zero upwards */
	scan = FUNC15(rel, SnapshotAny, 0, NULL, true, false);
	hscan = (HeapScanDesc) scan;

	FUNC3(SnapshotDirty);

	nblocks = hscan->rs_nblocks;	/* # blocks to be scanned */

	/* scan the relation */
	while ((tuple = FUNC13(scan, ForwardScanDirection)) != NULL)
	{
		FUNC1();

		/* must hold a buffer lock to call HeapTupleSatisfiesVisibility */
		FUNC5(hscan->rs_cbuf, BUFFER_LOCK_SHARE);

		if (FUNC2(tuple, &SnapshotDirty, hscan->rs_cbuf))
		{
			stat.tuple_len += tuple->t_len;
			stat.tuple_count++;
		}
		else
		{
			stat.dead_tuple_len += tuple->t_len;
			stat.dead_tuple_count++;
		}

		FUNC5(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

		/*
		 * To avoid physically reading the table twice, try to do the
		 * free-space scan in parallel with the heap scan.  However,
		 * heap_getnext may find no tuples on a given page, so we cannot
		 * simply examine the pages returned by the heap scan.
		 */
		tupblock = FUNC4(&tuple->t_self);

		while (block <= tupblock)
		{
			FUNC1();

			buffer = FUNC7(rel, MAIN_FORKNUM, block,
										RBM_NORMAL, hscan->rs_strategy);
			FUNC5(buffer, BUFFER_LOCK_SHARE);
			stat.free_space += FUNC6((Page) FUNC0(buffer));
			FUNC8(buffer);
			block++;
		}
	}

	while (block < nblocks)
	{
		FUNC1();

		buffer = FUNC7(rel, MAIN_FORKNUM, block,
									RBM_NORMAL, hscan->rs_strategy);
		FUNC5(buffer, BUFFER_LOCK_SHARE);
		stat.free_space += FUNC6((Page) FUNC0(buffer));
		FUNC8(buffer);
		block++;
	}

	FUNC16(scan);
	FUNC14(rel, AccessShareLock);

	stat.table_len = (uint64) nblocks * BLCKSZ;

	return FUNC9(&stat, fcinfo);
}