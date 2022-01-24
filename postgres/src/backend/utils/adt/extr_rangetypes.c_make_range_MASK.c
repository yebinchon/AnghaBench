#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_5__ {TYPE_4__ rng_canonical_finfo; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  int /*<<< orphan*/  RangeBound ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

RangeType *
FUNC6(TypeCacheEntry *typcache, RangeBound *lower, RangeBound *upper,
		   bool empty)
{
	RangeType  *range;

	range = FUNC5(typcache, lower, upper, empty);

	/* no need to call canonical on empty ranges ... */
	if (FUNC2(typcache->rng_canonical_finfo.fn_oid) &&
		!FUNC3(range))
		range = FUNC0(FUNC1(&typcache->rng_canonical_finfo,
												 FUNC4(range)));

	return range;
}