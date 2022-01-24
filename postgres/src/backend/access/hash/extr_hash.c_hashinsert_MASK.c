#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

bool
FUNC5(Relation rel, Datum *values, bool *isnull,
		   ItemPointer ht_ctid, Relation heapRel,
		   IndexUniqueCheck checkUnique,
		   IndexInfo *indexInfo)
{
	Datum		index_values[1];
	bool		index_isnull[1];
	IndexTuple	itup;

	/* convert data to a hash key; on failure, do not insert anything */
	if (!FUNC1(rel,
							 values, isnull,
							 index_values, index_isnull))
		return false;

	/* form an index tuple and point it at the heap tuple */
	itup = FUNC3(FUNC0(rel), index_values, index_isnull);
	itup->t_tid = *ht_ctid;

	FUNC2(rel, itup, heapRel);

	FUNC4(itup);

	return false;
}