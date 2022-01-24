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
typedef  int /*<<< orphan*/  RangeBound ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC2(TypeCacheEntry *typcache, const RangeBound *arg,
						  const RangeBound *centroid, const RangeBound *prev)
{
	if (prev)
	{
		int			prevcmp;
		int			cmp;

		/*
		 * Which direction were we supposed to traverse at previous level,
		 * left or right?
		 */
		prevcmp = FUNC0(typcache, arg, prev);

		/* and which direction did we actually go? */
		cmp = FUNC1(typcache, centroid, prev);

		/* if the two don't agree, there's nothing to see here */
		if ((prevcmp < 0 && cmp >= 0) || (prevcmp > 0 && cmp < 0))
			return 0;
	}

	return FUNC0(typcache, arg, centroid);
}