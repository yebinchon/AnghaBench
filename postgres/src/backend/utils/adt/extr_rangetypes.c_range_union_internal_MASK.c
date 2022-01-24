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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RangeType *
FUNC11(TypeCacheEntry *typcache, RangeType *r1, RangeType *r2,
					 bool strict)
{
	RangeBound	lower1,
				lower2;
	RangeBound	upper1,
				upper2;
	bool		empty1,
				empty2;
	RangeBound *result_lower;
	RangeBound *result_upper;

	/* Different types should be prevented by ANYRANGE matching rules */
	if (FUNC1(r1) != FUNC1(r2))
		FUNC2(ERROR, "range types do not match");

	FUNC9(typcache, r1, &lower1, &upper1, &empty1);
	FUNC9(typcache, r2, &lower2, &upper2, &empty2);

	/* if either is empty, the other is the correct answer */
	if (empty1)
		return r2;
	if (empty2)
		return r1;

	if (strict &&
		!FUNC0(FUNC10(typcache, r1, r2)) &&
		!FUNC0(FUNC7(typcache, r1, r2)))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_DATA_EXCEPTION),
				 FUNC5("result of range union would not be contiguous")));

	if (FUNC8(typcache, &lower1, &lower2) < 0)
		result_lower = &lower1;
	else
		result_lower = &lower2;

	if (FUNC8(typcache, &upper1, &upper2) > 0)
		result_upper = &upper1;
	else
		result_upper = &upper2;

	return FUNC6(typcache, result_lower, result_upper, false);
}