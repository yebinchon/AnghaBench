#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ int64 ;
struct TYPE_3__ {int /*<<< orphan*/  index; int /*<<< orphan*/  low_mask; int /*<<< orphan*/  high_mask; int /*<<< orphan*/  max_buckets; int /*<<< orphan*/  sortstate; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  TYPE_1__ HSpool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROGRESS_CREATEIDX_TUPLES_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(HSpool *hspool, Relation heapRel)
{
	IndexTuple	itup;
	int64		tups_done = 0;
#ifdef USE_ASSERT_CHECKING
	uint32		hashkey = 0;
#endif

	FUNC6(hspool->sortstate);

	while ((itup = FUNC5(hspool->sortstate, true)) != NULL)
	{
		/*
		 * Technically, it isn't critical that hash keys be found in sorted
		 * order, since this sorting is only used to increase locality of
		 * access as a performance optimization.  It still seems like a good
		 * idea to test tuplesort.c's handling of hash index tuple sorts
		 * through an assertion, though.
		 */
#ifdef USE_ASSERT_CHECKING
		uint32		lasthashkey = hashkey;

		hashkey = _hash_hashkey2bucket(_hash_get_indextuple_hashkey(itup),
									   hspool->max_buckets, hspool->high_mask,
									   hspool->low_mask);
		Assert(hashkey >= lasthashkey);
#endif

		FUNC1(hspool->index, itup, heapRel);

		FUNC4(PROGRESS_CREATEIDX_TUPLES_DONE,
									 ++tups_done);
	}
}