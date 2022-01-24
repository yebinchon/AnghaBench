#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ contiguous_pages; scalar_t__ free_pages; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__ FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

bool
FUNC6(FreePageManager *fpm, Size npages, Size *first_page)
{
	bool		result;
	Size		contiguous_pages;

	result = FUNC2(fpm, npages, first_page);

	/*
	 * It's a bit counterintuitive, but allocating pages can actually create
	 * opportunities for cleanup that create larger ranges.  We might pull a
	 * key out of the btree that enables the item at the head of the btree
	 * recycle list to be inserted; and then if there are more items behind it
	 * one of those might cause two currently-separated ranges to merge,
	 * creating a single range of contiguous pages larger than any that
	 * existed previously.  It might be worth trying to improve the cleanup
	 * algorithm to avoid such corner cases, but for now we just notice the
	 * condition and do the appropriate reporting.
	 */
	contiguous_pages = FUNC1(fpm);
	if (fpm->contiguous_pages < contiguous_pages)
		fpm->contiguous_pages = contiguous_pages;

	/*
	 * FreePageManagerGetInternal may have set contiguous_pages_dirty.
	 * Recompute contiguous_pages if so.
	 */
	FUNC4(fpm);

#ifdef FPM_EXTRA_ASSERTS
	if (result)
	{
		Assert(fpm->free_pages >= npages);
		fpm->free_pages -= npages;
	}
	Assert(fpm->free_pages == sum_free_pages(fpm));
	Assert(fpm->contiguous_pages == FreePageManagerLargestContiguous(fpm));
#endif
	return result;
}