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
typedef  int /*<<< orphan*/  TypeCacheEntry ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  int /*<<< orphan*/  RangeBound ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

bool
FUNC4(TypeCacheEntry *typcache, const RangeType *r1, const RangeType *r2)
{
	RangeBound	lower1,
				lower2;
	RangeBound	upper1,
				upper2;
	bool		empty1,
				empty2;

	/* Different types should be prevented by ANYRANGE matching rules */
	if (FUNC0(r1) != FUNC0(r2))
		FUNC2(ERROR, "range types do not match");

	FUNC3(typcache, r1, &lower1, &upper1, &empty1);
	FUNC3(typcache, r2, &lower2, &upper2, &empty2);

	/* An empty range is not adjacent to any other range */
	if (empty1 || empty2)
		return false;

	/*
	 * Given two ranges A..B and C..D, the ranges are adjacent if and only if
	 * B is adjacent to C, or D is adjacent to A.
	 */
	return (FUNC1(typcache, upper1, lower2) ||
			FUNC1(typcache, upper2, lower1));
}