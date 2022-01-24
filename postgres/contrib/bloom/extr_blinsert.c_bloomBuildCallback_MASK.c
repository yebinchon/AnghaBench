#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int indtuples; int /*<<< orphan*/  tmpCtx; int /*<<< orphan*/  count; TYPE_1__ data; int /*<<< orphan*/  blstate; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  BloomTuple ;
typedef  TYPE_2__ BloomBuildState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(Relation index, ItemPointer tid, Datum *values,
				   bool *isnull, bool tupleIsAlive, void *state)
{
	BloomBuildState *buildstate = (BloomBuildState *) state;
	MemoryContext oldCtx;
	BloomTuple *itup;

	oldCtx = FUNC4(buildstate->tmpCtx);

	itup = FUNC0(&buildstate->blstate, tid, values, isnull);

	/* Try to add next item to cached page */
	if (FUNC1(&buildstate->blstate, buildstate->data.data, itup))
	{
		/* Next item was added successfully */
		buildstate->count++;
	}
	else
	{
		/* Cached page is full, flush it out and make a new one */
		FUNC6(index, buildstate);

		FUNC2();

		FUNC7(buildstate);

		if (!FUNC1(&buildstate->blstate, buildstate->data.data, itup))
		{
			/* We shouldn't be here since we're inserting to the empty page */
			FUNC5(ERROR, "could not add new bloom tuple to empty page");
		}

		/* Next item was added successfully */
		buildstate->count++;
	}

	/* Update total tuple count */
	buildstate->indtuples += 1;

	FUNC4(oldCtx);
	FUNC3(buildstate->tmpCtx);
}