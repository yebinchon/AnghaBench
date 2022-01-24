#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_13__ {int /*<<< orphan*/ * ginstate; } ;
struct TYPE_12__ {scalar_t__ nTotalPages; int /*<<< orphan*/  nEntryPages; } ;
struct TYPE_11__ {scalar_t__ indtuples; TYPE_3__ buildStats; void* tmpCtx; void* funcCtx; int /*<<< orphan*/  ginstate; TYPE_6__ accum; } ;
struct TYPE_10__ {double heap_tuples; scalar_t__ index_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  void* MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  TYPE_1__ IndexBuildResult ;
typedef  int /*<<< orphan*/  GinStatsData ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_2__ GinBuildState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GIN_LEAF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  ginBuildCallback ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int) ; 
 double FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

IndexBuildResult *
FUNC25(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	double		reltuples;
	GinBuildState buildstate;
	Buffer		RootBuffer,
				MetaBuffer;
	ItemPointerData *list;
	Datum		key;
	GinNullCategory category;
	uint32		nlist;
	MemoryContext oldCtx;
	OffsetNumber attnum;

	if (FUNC9(index) != 0)
		FUNC14(ERROR, "index \"%s\" already contains data",
			 FUNC10(index));

	FUNC20(&buildstate.ginstate, index);
	buildstate.indtuples = 0;
	FUNC22(&buildstate.buildStats, 0, sizeof(GinStatsData));

	/* initialize the meta page */
	MetaBuffer = FUNC5(index);

	/* initialize the root page */
	RootBuffer = FUNC5(index);

	FUNC12();
	FUNC4(MetaBuffer);
	FUNC6(MetaBuffer);
	FUNC3(RootBuffer, GIN_LEAF);
	FUNC6(RootBuffer);


	FUNC13(MetaBuffer);
	FUNC13(RootBuffer);
	FUNC2();

	/* count the root as first entry page */
	buildstate.buildStats.nEntryPages++;

	/*
	 * create a temporary memory context that is used to hold data not yet
	 * dumped out to the index
	 */
	buildstate.tmpCtx = FUNC0(CurrentMemoryContext,
											  "Gin build temporary context",
											  ALLOCSET_DEFAULT_SIZES);

	/*
	 * create a temporary memory context that is used for calling
	 * ginExtractEntries(), and can be reset after each tuple
	 */
	buildstate.funcCtx = FUNC0(CurrentMemoryContext,
											   "Gin build temporary context for user-defined function",
											   ALLOCSET_DEFAULT_SIZES);

	buildstate.accum.ginstate = &buildstate.ginstate;
	FUNC18(&buildstate.accum);

	/*
	 * Do the heap scan.  We disallow sync scan here because dataPlaceToPage
	 * prefers to receive tuples in TID order.
	 */
	reltuples = FUNC24(heap, index, indexInfo, false, true,
									   ginBuildCallback, (void *) &buildstate,
									   NULL);

	/* dump remaining entries to the index */
	oldCtx = FUNC8(buildstate.tmpCtx);
	FUNC15(&buildstate.accum);
	while ((list = FUNC17(&buildstate.accum,
								 &attnum, &key, &category, &nlist)) != NULL)
	{
		/* there could be many entries, so be willing to abort here */
		FUNC1();
		FUNC16(&buildstate.ginstate, attnum, key, category,
					   list, nlist, &buildstate.buildStats);
	}
	FUNC8(oldCtx);

	FUNC7(buildstate.funcCtx);
	FUNC7(buildstate.tmpCtx);

	/*
	 * Update metapage stats
	 */
	buildstate.buildStats.nTotalPages = FUNC9(index);
	FUNC19(index, &buildstate.buildStats, true);

	/*
	 * We didn't write WAL records as we built the index, so if WAL-logging is
	 * required, write all pages to the WAL now.
	 */
	if (FUNC11(index))
	{
		FUNC21(index, MAIN_FORKNUM,
						  0, FUNC9(index),
						  true);
	}

	/*
	 * Return statistics
	 */
	result = (IndexBuildResult *) FUNC23(sizeof(IndexBuildResult));

	result->heap_tuples = reltuples;
	result->index_tuples = buildstate.indtuples;

	return result;
}