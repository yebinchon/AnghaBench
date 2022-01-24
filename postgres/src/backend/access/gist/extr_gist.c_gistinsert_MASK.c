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
struct TYPE_12__ {int /*<<< orphan*/  tempCxt; } ;
struct TYPE_11__ {void* ii_AmCache; int /*<<< orphan*/  ii_Context; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__ IndexInfo ;
typedef  TYPE_3__ GISTSTATE ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 

bool
FUNC6(Relation r, Datum *values, bool *isnull,
		   ItemPointer ht_ctid, Relation heapRel,
		   IndexUniqueCheck checkUnique,
		   IndexInfo *indexInfo)
{
	GISTSTATE  *giststate = (GISTSTATE *) indexInfo->ii_AmCache;
	IndexTuple	itup;
	MemoryContext oldCxt;

	/* Initialize GISTSTATE cache if first call in this statement */
	if (giststate == NULL)
	{
		oldCxt = FUNC1(indexInfo->ii_Context);
		giststate = FUNC5(r);
		giststate->tempCxt = FUNC2();
		indexInfo->ii_AmCache = (void *) giststate;
		FUNC1(oldCxt);
	}

	oldCxt = FUNC1(giststate->tempCxt);

	itup = FUNC3(giststate, r,
						 values, isnull, true /* size is currently bogus */ );
	itup->t_tid = *ht_ctid;

	FUNC4(r, itup, 0, giststate, heapRel, false);

	/* cleanup */
	FUNC1(oldCxt);
	FUNC0(giststate->tempCxt);

	return false;
}