#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_11__ {TYPE_1__* origTupdesc; } ;
struct TYPE_10__ {long allocatedMemory; } ;
struct TYPE_9__ {TYPE_3__ accum; int /*<<< orphan*/  tmpCtx; int /*<<< orphan*/  buildStats; TYPE_6__ ginstate; } ;
struct TYPE_8__ {int natts; } ;
typedef  long Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_2__ GinBuildState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ maintenance_work_mem ; 

__attribute__((used)) static void
FUNC8(Relation index, ItemPointer tid, Datum *values,
				 bool *isnull, bool tupleIsAlive, void *state)
{
	GinBuildState *buildstate = (GinBuildState *) state;
	MemoryContext oldCtx;
	int			i;

	oldCtx = FUNC2(buildstate->tmpCtx);

	for (i = 0; i < buildstate->ginstate.origTupdesc->natts; i++)
		FUNC6(buildstate, (OffsetNumber) (i + 1),
							   values[i], isnull[i], tid);

	/* If we've maxed out our available memory, dump everything to the index */
	if (buildstate->accum.allocatedMemory >= (Size) maintenance_work_mem * 1024L)
	{
		ItemPointerData *list;
		Datum		key;
		GinNullCategory category;
		uint32		nlist;
		OffsetNumber attnum;

		FUNC3(&buildstate->accum);
		while ((list = FUNC5(&buildstate->accum,
									 &attnum, &key, &category, &nlist)) != NULL)
		{
			/* there could be many entries, so be willing to abort here */
			FUNC0();
			FUNC4(&buildstate->ginstate, attnum, key, category,
						   list, nlist, &buildstate->buildStats);
		}

		FUNC1(buildstate->tmpCtx);
		FUNC7(&buildstate->accum);
	}

	FUNC2(oldCtx);
}