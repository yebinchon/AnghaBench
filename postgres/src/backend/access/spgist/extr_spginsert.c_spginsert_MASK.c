#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SpGistState ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool
FUNC7(Relation index, Datum *values, bool *isnull,
		  ItemPointer ht_ctid, Relation heapRel,
		  IndexUniqueCheck checkUnique,
		  IndexInfo *indexInfo)
{
	SpGistState spgstate;
	MemoryContext oldCtx;
	MemoryContext insertCtx;

	insertCtx = FUNC0(CurrentMemoryContext,
									  "SP-GiST insert temporary context",
									  ALLOCSET_DEFAULT_SIZES);
	oldCtx = FUNC3(insertCtx);

	FUNC5(&spgstate, index);

	/*
	 * We might have to repeat spgdoinsert() multiple times, if conflicts
	 * occur with concurrent insertions.  If so, reset the insertCtx each time
	 * to avoid cumulative memory consumption.  That means we also have to
	 * redo initSpGistState(), but it's cheap enough not to matter.
	 */
	while (!FUNC6(index, &spgstate, ht_ctid, *values, *isnull))
	{
		FUNC2(insertCtx);
		FUNC5(&spgstate, index);
	}

	FUNC4(index);

	FUNC3(oldCtx);
	FUNC1(insertCtx);

	/* return false since we've not done any unique check */
	return false;
}