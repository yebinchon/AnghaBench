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
 char RANGE_CONTAIN_EMPTY ; 
 char RANGE_EMPTY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 char FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RangeType *
FUNC6(TypeCacheEntry *typcache, RangeType *r1, RangeType *r2)
{
	RangeType  *result;
	RangeBound	lower1,
				lower2;
	RangeBound	upper1,
				upper2;
	bool		empty1,
				empty2;
	char		flags1,
				flags2;
	RangeBound *result_lower;
	RangeBound *result_upper;

	FUNC3(typcache, r1, &lower1, &upper1, &empty1);
	FUNC3(typcache, r2, &lower2, &upper2, &empty2);
	flags1 = FUNC4(r1);
	flags2 = FUNC4(r2);

	if (empty1)
	{
		/* We can return r2 as-is if it already is or contains empty */
		if (flags2 & (RANGE_EMPTY | RANGE_CONTAIN_EMPTY))
			return r2;
		/* Else we'd better copy it (modify-in-place isn't safe) */
		r2 = FUNC1(r2);
		FUNC5(r2);
		return r2;
	}
	if (empty2)
	{
		/* We can return r1 as-is if it already is or contains empty */
		if (flags1 & (RANGE_EMPTY | RANGE_CONTAIN_EMPTY))
			return r1;
		/* Else we'd better copy it (modify-in-place isn't safe) */
		r1 = FUNC1(r1);
		FUNC5(r1);
		return r1;
	}

	if (FUNC2(typcache, &lower1, &lower2) <= 0)
		result_lower = &lower1;
	else
		result_lower = &lower2;

	if (FUNC2(typcache, &upper1, &upper2) >= 0)
		result_upper = &upper1;
	else
		result_upper = &upper2;

	/* optimization to avoid constructing a new range */
	if (result_lower == &lower1 && result_upper == &upper1 &&
		((flags1 & RANGE_CONTAIN_EMPTY) || !(flags2 & RANGE_CONTAIN_EMPTY)))
		return r1;
	if (result_lower == &lower2 && result_upper == &upper2 &&
		((flags2 & RANGE_CONTAIN_EMPTY) || !(flags1 & RANGE_CONTAIN_EMPTY)))
		return r2;

	result = FUNC0(typcache, result_lower, result_upper, false);

	if ((flags1 & RANGE_CONTAIN_EMPTY) || (flags2 & RANGE_CONTAIN_EMPTY))
		FUNC5(result);

	return result;
}