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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_12__ {double version; double level; double root_blkno; int internal_pages; int leaf_pages; int empty_pages; int deleted_pages; scalar_t__ max_avail; scalar_t__ fragments; scalar_t__ free_space; } ;
struct TYPE_11__ {double btm_version; double btm_level; double btm_root; } ;
struct TYPE_10__ {scalar_t__ btpo_next; } ;
struct TYPE_9__ {int pd_special; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_2__* BTPageOpaque ;
typedef  TYPE_3__ BTMetaPageData ;
typedef  TYPE_4__ BTIndexStat ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  BAS_BULKREAD ; 
 int BLCKSZ ; 
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* INT64_FORMAT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ P_NONE ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int SizeOfPageHeaderData ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC25 (char*,double) ; 
 char* FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC28(Relation rel, FunctionCallInfo fcinfo)
{
	Datum		result;
	BlockNumber nblocks;
	BlockNumber blkno;
	BTIndexStat indexStat;
	BufferAccessStrategy bstrategy = FUNC4(BAS_BULKREAD);

	if (!FUNC7(rel) || !FUNC6(rel))
		FUNC21(ERROR,
				(FUNC22(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC23("relation \"%s\" is not a btree index",
						FUNC17(rel))));

	/*
	 * Reject attempts to read non-local temporary relations; we would be
	 * likely to get wrong data since we have no visibility into the owning
	 * session's local buffers.
	 */
	if (FUNC14(rel))
		FUNC21(ERROR,
				(FUNC22(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC23("cannot access temporary tables of other sessions")));

	/*
	 * Read metapage
	 */
	{
		Buffer		buffer = FUNC15(rel, MAIN_FORKNUM, 0, RBM_NORMAL, bstrategy);
		Page		page = FUNC1(buffer);
		BTMetaPageData *metad = FUNC0(page);

		indexStat.version = metad->btm_version;
		indexStat.level = metad->btm_level;
		indexStat.root_blkno = metad->btm_root;

		FUNC18(buffer);
	}

	/* -- init counters -- */
	indexStat.internal_pages = 0;
	indexStat.leaf_pages = 0;
	indexStat.empty_pages = 0;
	indexStat.deleted_pages = 0;

	indexStat.max_avail = 0;
	indexStat.free_space = 0;

	indexStat.fragments = 0;

	/*
	 * Scan all blocks except the metapage
	 */
	nblocks = FUNC16(rel);

	for (blkno = 1; blkno < nblocks; blkno++)
	{
		Buffer		buffer;
		Page		page;
		BTPageOpaque opaque;

		FUNC3();

		/* Read and lock buffer */
		buffer = FUNC15(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);
		FUNC8(buffer, BUFFER_LOCK_SHARE);

		page = FUNC1(buffer);
		opaque = (BTPageOpaque) FUNC13(page);

		/* Determine page type, and update totals */

		if (FUNC10(opaque))
			indexStat.deleted_pages++;
		else if (FUNC9(opaque))
			indexStat.empty_pages++;	/* this is the "half dead" state */
		else if (FUNC11(opaque))
		{
			int			max_avail;

			max_avail = BLCKSZ - (BLCKSZ - ((PageHeader) page)->pd_special + SizeOfPageHeaderData);
			indexStat.max_avail += max_avail;
			indexStat.free_space += FUNC12(page);

			indexStat.leaf_pages++;

			/*
			 * If the next leaf is on an earlier block, it means a
			 * fragmentation.
			 */
			if (opaque->btpo_next != P_NONE && opaque->btpo_next < blkno)
				indexStat.fragments++;
		}
		else
			indexStat.internal_pages++;

		/* Unlock and release buffer */
		FUNC8(buffer, BUFFER_LOCK_UNLOCK);
		FUNC18(buffer);
	}

	FUNC27(rel, AccessShareLock);

	/*----------------------------
	 * Build a result tuple
	 *----------------------------
	 */
	{
		TupleDesc	tupleDesc;
		int			j;
		char	   *values[10];
		HeapTuple	tuple;

		/* Build a tuple descriptor for our result type */
		if (FUNC24(fcinfo, NULL, &tupleDesc) != TYPEFUNC_COMPOSITE)
			FUNC20(ERROR, "return type must be a row type");

		j = 0;
		values[j++] = FUNC25("%d", indexStat.version);
		values[j++] = FUNC25("%d", indexStat.level);
		values[j++] = FUNC25(INT64_FORMAT,
							   (1 + /* include the metapage in index_size */
								indexStat.leaf_pages +
								indexStat.internal_pages +
								indexStat.deleted_pages +
								indexStat.empty_pages) * BLCKSZ);
		values[j++] = FUNC25("%u", indexStat.root_blkno);
		values[j++] = FUNC25(INT64_FORMAT, indexStat.internal_pages);
		values[j++] = FUNC25(INT64_FORMAT, indexStat.leaf_pages);
		values[j++] = FUNC25(INT64_FORMAT, indexStat.empty_pages);
		values[j++] = FUNC25(INT64_FORMAT, indexStat.deleted_pages);
		if (indexStat.max_avail > 0)
			values[j++] = FUNC25("%.2f",
								   100.0 - (double) indexStat.free_space / (double) indexStat.max_avail * 100.0);
		else
			values[j++] = FUNC26("NaN");
		if (indexStat.leaf_pages > 0)
			values[j++] = FUNC25("%.2f",
								   (double) indexStat.fragments / (double) indexStat.leaf_pages * 100.0);
		else
			values[j++] = FUNC26("NaN");

		tuple = FUNC2(FUNC19(tupleDesc),
									   values);

		result = FUNC5(tuple);
	}

	return result;
}