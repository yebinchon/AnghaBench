#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int isBuild; } ;
struct TYPE_6__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_5__ {scalar_t__ indtuples; int /*<<< orphan*/  tmpCtx; TYPE_4__ spgstate; } ;
typedef  TYPE_1__ SpGistBuildState ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  TYPE_2__ IndexBuildResult ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int SPGIST_LEAF ; 
 scalar_t__ SPGIST_METAPAGE_BLKNO ; 
 int SPGIST_NULLS ; 
 scalar_t__ SPGIST_NULL_BLKNO ; 
 scalar_t__ SPGIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  spgistBuildCallback ; 
 double FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

IndexBuildResult *
FUNC21(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	double		reltuples;
	SpGistBuildState buildstate;
	Buffer		metabuffer,
				rootbuffer,
				nullbuffer;

	if (FUNC7(index) != 0)
		FUNC16(ERROR, "index \"%s\" already contains data",
			 FUNC8(index));

	/*
	 * Initialize the meta page and root pages
	 */
	metabuffer = FUNC13(index);
	rootbuffer = FUNC13(index);
	nullbuffer = FUNC13(index);

	FUNC1(FUNC2(metabuffer) == SPGIST_METAPAGE_BLKNO);
	FUNC1(FUNC2(rootbuffer) == SPGIST_ROOT_BLKNO);
	FUNC1(FUNC2(nullbuffer) == SPGIST_NULL_BLKNO);

	FUNC10();

	FUNC12(FUNC3(metabuffer));
	FUNC5(metabuffer);
	FUNC11(rootbuffer, SPGIST_LEAF);
	FUNC5(rootbuffer);
	FUNC11(nullbuffer, SPGIST_LEAF | SPGIST_NULLS);
	FUNC5(nullbuffer);


	FUNC4();

	FUNC15(metabuffer);
	FUNC15(rootbuffer);
	FUNC15(nullbuffer);

	/*
	 * Now insert all the heap data into the index
	 */
	FUNC17(&buildstate.spgstate, index);
	buildstate.spgstate.isBuild = true;
	buildstate.indtuples = 0;

	buildstate.tmpCtx = FUNC0(CurrentMemoryContext,
											  "SP-GiST build temporary context",
											  ALLOCSET_DEFAULT_SIZES);

	reltuples = FUNC20(heap, index, indexInfo, true, true,
									   spgistBuildCallback, (void *) &buildstate,
									   NULL);

	FUNC6(buildstate.tmpCtx);

	FUNC14(index);

	/*
	 * We didn't write WAL records as we built the index, so if WAL-logging is
	 * required, write all pages to the WAL now.
	 */
	if (FUNC9(index))
	{
		FUNC18(index, MAIN_FORKNUM,
						  0, FUNC7(index),
						  true);
	}

	result = (IndexBuildResult *) FUNC19(sizeof(IndexBuildResult));
	result->heap_tuples = reltuples;
	result->index_tuples = buildstate.indtuples;

	return result;
}