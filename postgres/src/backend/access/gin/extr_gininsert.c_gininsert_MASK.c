#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* origTupdesc; } ;
struct TYPE_10__ {void* ii_AmCache; int /*<<< orphan*/  ii_Context; } ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  TYPE_2__ IndexInfo ;
typedef  int /*<<< orphan*/  GinTupleCollector ;
typedef  TYPE_3__ GinState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int) ; 

bool
FUNC10(Relation index, Datum *values, bool *isnull,
		  ItemPointer ht_ctid, Relation heapRel,
		  IndexUniqueCheck checkUnique,
		  IndexInfo *indexInfo)
{
	GinState   *ginstate = (GinState *) indexInfo->ii_AmCache;
	MemoryContext oldCtx;
	MemoryContext insertCtx;
	int			i;

	/* Initialize GinState cache if first call in this statement */
	if (ginstate == NULL)
	{
		oldCtx = FUNC3(indexInfo->ii_Context);
		ginstate = (GinState *) FUNC9(sizeof(GinState));
		FUNC7(ginstate, index);
		indexInfo->ii_AmCache = (void *) ginstate;
		FUNC3(oldCtx);
	}

	insertCtx = FUNC0(CurrentMemoryContext,
									  "Gin insert temporary context",
									  ALLOCSET_DEFAULT_SIZES);

	oldCtx = FUNC3(insertCtx);

	if (FUNC1(index))
	{
		GinTupleCollector collector;

		FUNC8(&collector, 0, sizeof(GinTupleCollector));

		for (i = 0; i < ginstate->origTupdesc->natts; i++)
			FUNC4(ginstate, &collector,
									(OffsetNumber) (i + 1),
									values[i], isnull[i],
									ht_ctid);

		FUNC5(ginstate, &collector);
	}
	else
	{
		for (i = 0; i < ginstate->origTupdesc->natts; i++)
			FUNC6(ginstate, (OffsetNumber) (i + 1),
							   values[i], isnull[i],
							   ht_ctid);
	}

	FUNC3(oldCtx);
	FUNC2(insertCtx);

	return false;
}