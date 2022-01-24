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
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

bool
FUNC4(Relation rel, Datum *values, bool *isnull,
		 ItemPointer ht_ctid, Relation heapRel,
		 IndexUniqueCheck checkUnique,
		 IndexInfo *indexInfo)
{
	bool		result;
	IndexTuple	itup;

	/* generate an index tuple */
	itup = FUNC2(FUNC0(rel), values, isnull);
	itup->t_tid = *ht_ctid;

	result = FUNC1(rel, itup, checkUnique, heapRel);

	FUNC3(itup);

	return result;
}