#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pagesPerRange; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ xl_brin_createidx ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {double bs_numtuples; int /*<<< orphan*/  bs_rmAccess; } ;
struct TYPE_9__ {double heap_tuples; double index_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  TYPE_2__ IndexBuildResult ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  TYPE_3__ BrinBuildState ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BRIN_CURRENT_VERSION ; 
 scalar_t__ BRIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_NEW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BRIN_ID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SizeOfBrinCreateIdx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_BRIN_CREATE_INDEX ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brinbuildCallback ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 double FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 

IndexBuildResult *
FUNC25(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	double		reltuples;
	double		idxtuples;
	BrinRevmap *revmap;
	BrinBuildState *state;
	Buffer		meta;
	BlockNumber pagesPerRange;

	/*
	 * We expect to be called exactly once for any index relation.
	 */
	if (FUNC8(index) != 0)
		FUNC19(ERROR, "index \"%s\" already contains data",
			 FUNC9(index));

	/*
	 * Critical section not required, because on error the creation of the
	 * whole relation will be rolled back.
	 */

	meta = FUNC7(index, P_NEW);
	FUNC0(FUNC2(meta) == BRIN_METAPAGE_BLKNO);
	FUNC4(meta, BUFFER_LOCK_EXCLUSIVE);

	FUNC18(FUNC3(meta), FUNC1(index),
					   BRIN_CURRENT_VERSION);
	FUNC5(meta);

	if (FUNC10(index))
	{
		xl_brin_createidx xlrec;
		XLogRecPtr	recptr;
		Page		page;

		xlrec.version = BRIN_CURRENT_VERSION;
		xlrec.pagesPerRange = FUNC1(index);

		FUNC12();
		FUNC15((char *) &xlrec, SizeOfBrinCreateIdx);
		FUNC14(0, meta, REGBUF_WILL_INIT | REGBUF_STANDARD);

		recptr = FUNC13(RM_BRIN_ID, XLOG_BRIN_CREATE_INDEX);

		page = FUNC3(meta);
		FUNC6(page, recptr);
	}

	FUNC11(meta);

	/*
	 * Initialize our state, including the deformed tuple state.
	 */
	revmap = FUNC16(index, &pagesPerRange, NULL);
	state = FUNC21(index, revmap, pagesPerRange);

	/*
	 * Now scan the relation.  No syncscan allowed here because we want the
	 * heap blocks in physical order.
	 */
	reltuples = FUNC23(heap, index, indexInfo, false, true,
									   brinbuildCallback, (void *) state, NULL);

	/* process the final batch */
	FUNC20(state);

	/* release resources */
	idxtuples = state->bs_numtuples;
	FUNC17(state->bs_rmAccess);
	FUNC24(state);

	/*
	 * Return statistics
	 */
	result = (IndexBuildResult *) FUNC22(sizeof(IndexBuildResult));

	result->heap_tuples = reltuples;
	result->index_tuples = idxtuples;

	return result;
}