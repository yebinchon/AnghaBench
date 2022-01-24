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
struct TYPE_5__ {int /*<<< orphan*/ * tupdesc; int /*<<< orphan*/  origTupdesc; scalar_t__ oneCol; } ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_1__ GinState ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_CAT_NORM_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

Datum
FUNC4(GinState *ginstate, IndexTuple tuple,
				 GinNullCategory *category)
{
	Datum		res;
	bool		isnull;

	if (ginstate->oneCol)
	{
		/*
		 * Single column index doesn't store attribute numbers in tuples
		 */
		res = FUNC3(tuple, FirstOffsetNumber, ginstate->origTupdesc,
							&isnull);
	}
	else
	{
		/*
		 * Since the datum type depends on which index column it's from, we
		 * must be careful to use the right tuple descriptor here.
		 */
		OffsetNumber colN = FUNC2(ginstate, tuple);

		res = FUNC3(tuple, FUNC1(FirstOffsetNumber),
							ginstate->tupdesc[colN - 1],
							&isnull);
	}

	if (isnull)
		*category = FUNC0(tuple, ginstate);
	else
		*category = GIN_CAT_NORM_KEY;

	return res;
}