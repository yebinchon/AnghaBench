#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_20__ {scalar_t__ indtuples; int /*<<< orphan*/ * spool; TYPE_2__* heapRel; } ;
struct TYPE_19__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relpersistence; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  TYPE_3__ IndexBuildResult ;
typedef  TYPE_4__ HashBuildState ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 long BLCKSZ ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBuffers ; 
 int /*<<< orphan*/  NLocBuffer ; 
 int /*<<< orphan*/  PROGRESS_CREATEIDX_TUPLES_TOTAL ; 
 scalar_t__ RELPERSISTENCE_TEMP ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  hashbuildCallback ; 
 long maintenance_work_mem ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 double FUNC11 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

IndexBuildResult *
FUNC12(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	BlockNumber relpages;
	double		reltuples;
	double		allvisfrac;
	uint32		num_buckets;
	long		sort_threshold;
	HashBuildState buildstate;

	/*
	 * We expect to be called exactly once for any index relation. If that's
	 * not the case, big trouble's what we have.
	 */
	if (FUNC1(index) != 0)
		FUNC7(ERROR, "index \"%s\" already contains data",
			 FUNC2(index));

	/* Estimate the number of rows currently present in the table */
	FUNC8(heap, NULL, &relpages, &reltuples, &allvisfrac);

	/* Initialize the hash index metadata page and initial buckets */
	num_buckets = FUNC6(index, reltuples, MAIN_FORKNUM);

	/*
	 * If we just insert the tuples into the index in scan order, then
	 * (assuming their hash codes are pretty random) there will be no locality
	 * of access to the index, and if the index is bigger than available RAM
	 * then we'll thrash horribly.  To prevent that scenario, we can sort the
	 * tuples by (expected) bucket number.  However, such a sort is useless
	 * overhead when the index does fit in RAM.  We choose to sort if the
	 * initial index size exceeds maintenance_work_mem, or the number of
	 * buffers usable for the index, whichever is less.  (Limiting by the
	 * number of buffers should reduce thrashing between PG buffers and kernel
	 * buffers, which seems useful even if no physical I/O results.  Limiting
	 * by maintenance_work_mem is useful to allow easy testing of the sort
	 * code path, and may be useful to DBAs as an additional control knob.)
	 *
	 * NOTE: this test will need adjustment if a bucket is ever different from
	 * one page.  Also, "initial index size" accounting does not include the
	 * metapage, nor the first bitmap page.
	 */
	sort_threshold = (maintenance_work_mem * 1024L) / BLCKSZ;
	if (index->rd_rel->relpersistence != RELPERSISTENCE_TEMP)
		sort_threshold = FUNC0(sort_threshold, NBuffers);
	else
		sort_threshold = FUNC0(sort_threshold, NLocBuffer);

	if (num_buckets >= (uint32) sort_threshold)
		buildstate.spool = FUNC5(heap, index, num_buckets);
	else
		buildstate.spool = NULL;

	/* prepare to build the index */
	buildstate.indtuples = 0;
	buildstate.heapRel = heap;

	/* do the heap scan */
	reltuples = FUNC11(heap, index, indexInfo, true, true,
									   hashbuildCallback,
									   (void *) &buildstate, NULL);
	FUNC10(PROGRESS_CREATEIDX_TUPLES_TOTAL,
								 buildstate.indtuples);

	if (buildstate.spool)
	{
		/* sort the tuples and insert them into the index */
		FUNC3(buildstate.spool, buildstate.heapRel);
		FUNC4(buildstate.spool);
	}

	/*
	 * Return statistics
	 */
	result = (IndexBuildResult *) FUNC9(sizeof(IndexBuildResult));

	result->heap_tuples = reltuples;
	result->index_tuples = buildstate.indtuples;

	return result;
}