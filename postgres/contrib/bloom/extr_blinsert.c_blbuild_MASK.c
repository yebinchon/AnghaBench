#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buildstate ;
struct TYPE_8__ {scalar_t__ count; int /*<<< orphan*/  indtuples; int /*<<< orphan*/  tmpCtx; int /*<<< orphan*/  blstate; } ;
struct TYPE_7__ {double heap_tuples; int /*<<< orphan*/  index_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  TYPE_1__ IndexBuildResult ;
typedef  TYPE_2__ BloomBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bloomBuildCallback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int) ; 
 double FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

IndexBuildResult *
FUNC12(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	double		reltuples;
	BloomBuildState buildstate;

	if (FUNC3(index) != 0)
		FUNC5(ERROR, "index \"%s\" already contains data",
			 FUNC4(index));

	/* Initialize the meta page */
	FUNC1(index);

	/* Initialize the bloom build state */
	FUNC9(&buildstate, 0, sizeof(buildstate));
	FUNC7(&buildstate.blstate, index);
	buildstate.tmpCtx = FUNC0(CurrentMemoryContext,
											  "Bloom build temporary context",
											  ALLOCSET_DEFAULT_SIZES);
	FUNC8(&buildstate);

	/* Do the heap scan */
	reltuples = FUNC11(heap, index, indexInfo, true, true,
									   bloomBuildCallback, (void *) &buildstate,
									   NULL);

	/* Flush last page if needed (it will be, unless heap was empty) */
	if (buildstate.count > 0)
		FUNC6(index, &buildstate);

	FUNC2(buildstate.tmpCtx);

	result = (IndexBuildResult *) FUNC10(sizeof(IndexBuildResult));
	result->heap_tuples = reltuples;
	result->index_tuples = buildstate.indtuples;

	return result;
}