#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  idxStat ;
struct TYPE_12__ {scalar_t__ nTotalPages; int /*<<< orphan*/  nEntries; int /*<<< orphan*/  nEntryPages; int /*<<< orphan*/  nDataPages; } ;
struct TYPE_11__ {void* num_pages; scalar_t__ pages_free; int /*<<< orphan*/  estimated_count; int /*<<< orphan*/  num_index_tuples; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; int /*<<< orphan*/  strategy; int /*<<< orphan*/  estimated_count; int /*<<< orphan*/  num_heap_tuples; scalar_t__ analyze_only; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  TYPE_1__ IndexVacuumInfo ;
typedef  TYPE_2__ IndexBulkDeleteResult ;
typedef  TYPE_3__ GinStatsData ;
typedef  int /*<<< orphan*/  GinState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ GIN_ROOT_BLKNO ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

IndexBulkDeleteResult *
FUNC23(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
	Relation	index = info->index;
	bool		needLock;
	BlockNumber npages,
				blkno;
	BlockNumber totFreePages;
	GinState	ginstate;
	GinStatsData idxStat;

	/*
	 * In an autovacuum analyze, we want to clean up pending insertions.
	 * Otherwise, an ANALYZE-only call is a no-op.
	 */
	if (info->analyze_only)
	{
		if (FUNC7())
		{
			FUNC19(&ginstate, index);
			FUNC17(&ginstate, false, true, true, stats);
		}
		return stats;
	}

	/*
	 * Set up all-zero stats and cleanup pending inserts if ginbulkdelete
	 * wasn't called
	 */
	if (stats == NULL)
	{
		stats = (IndexBulkDeleteResult *) FUNC21(sizeof(IndexBulkDeleteResult));
		FUNC19(&ginstate, index);
		FUNC17(&ginstate, !FUNC7(),
						 false, true, stats);
	}

	FUNC20(&idxStat, 0, sizeof(idxStat));

	/*
	 * XXX we always report the heap tuple count as the number of index
	 * entries.  This is bogus if the index is partial, but it's real hard to
	 * tell how many distinct heap entries are referenced by a GIN index.
	 */
	stats->num_index_tuples = info->num_heap_tuples;
	stats->estimated_count = info->estimated_count;

	/*
	 * Need lock unless it's local to this backend.
	 */
	needLock = !FUNC11(index);

	if (needLock)
		FUNC9(index, ExclusiveLock);
	npages = FUNC14(index);
	if (needLock)
		FUNC15(index, ExclusiveLock);

	totFreePages = 0;

	for (blkno = GIN_ROOT_BLKNO; blkno < npages; blkno++)
	{
		Buffer		buffer;
		Page		page;

		FUNC22();

		buffer = FUNC12(index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, info->strategy);
		FUNC8(buffer, GIN_SHARE);
		page = (Page) FUNC1(buffer);

		if (FUNC5(page))
		{
			FUNC0(blkno != GIN_ROOT_BLKNO);
			FUNC13(index, blkno);
			totFreePages++;
		}
		else if (FUNC2(page))
		{
			idxStat.nDataPages++;
		}
		else if (!FUNC4(page))
		{
			idxStat.nEntryPages++;

			if (FUNC3(page))
				idxStat.nEntries += FUNC10(page);
		}

		FUNC16(buffer);
	}

	/* Update the metapage with accurate page and entry counts */
	idxStat.nTotalPages = npages;
	FUNC18(info->index, &idxStat, false);

	/* Finally, vacuum the FSM */
	FUNC6(info->index);

	stats->pages_free = totFreePages;

	if (needLock)
		FUNC9(index, ExclusiveLock);
	stats->num_pages = FUNC14(index);
	if (needLock)
		FUNC15(index, ExclusiveLock);

	return stats;
}