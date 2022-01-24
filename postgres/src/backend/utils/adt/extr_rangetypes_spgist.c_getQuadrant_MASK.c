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
typedef  int int16 ;
typedef  int /*<<< orphan*/  TypeCacheEntry ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  int /*<<< orphan*/  RangeBound ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int16
FUNC2(TypeCacheEntry *typcache, const RangeType *centroid, const RangeType *tst)
{
	RangeBound	centroidLower,
				centroidUpper;
	bool		centroidEmpty;
	RangeBound	lower,
				upper;
	bool		empty;

	FUNC1(typcache, centroid, &centroidLower, &centroidUpper,
					  &centroidEmpty);
	FUNC1(typcache, tst, &lower, &upper, &empty);

	if (empty)
		return 5;

	if (FUNC0(typcache, &lower, &centroidLower) >= 0)
	{
		if (FUNC0(typcache, &upper, &centroidUpper) >= 0)
			return 1;
		else
			return 2;
	}
	else
	{
		if (FUNC0(typcache, &upper, &centroidUpper) >= 0)
			return 4;
		else
			return 3;
	}
}