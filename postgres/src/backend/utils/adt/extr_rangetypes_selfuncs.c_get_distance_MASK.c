#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_9__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_7__ {int /*<<< orphan*/  rng_collation; TYPE_6__ rng_subdiff_finfo; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {scalar_t__ lower; scalar_t__ infinite; int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ RangeBound ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 () ; 

__attribute__((used)) static float8
FUNC4(TypeCacheEntry *typcache, const RangeBound *bound1, const RangeBound *bound2)
{
	bool		has_subdiff = FUNC2(typcache->rng_subdiff_finfo.fn_oid);

	if (!bound1->infinite && !bound2->infinite)
	{
		/*
		 * No bounds are infinite, use subdiff function or return default
		 * value of 1.0 if no subdiff is available.
		 */
		if (has_subdiff)
			return
				FUNC0(FUNC1(&typcache->rng_subdiff_finfo,
												 typcache->rng_collation,
												 bound2->val,
												 bound1->val));
		else
			return 1.0;
	}
	else if (bound1->infinite && bound2->infinite)
	{
		/* Both bounds are infinite */
		if (bound1->lower == bound2->lower)
			return 0.0;
		else
			return FUNC3();
	}
	else
	{
		/* One bound is infinite, another is not */
		return FUNC3();
	}
}