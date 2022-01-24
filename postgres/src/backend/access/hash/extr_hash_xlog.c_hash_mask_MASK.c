#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hasho_flag; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* HashPageOpaque ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int LH_PAGE_HAS_DEAD_TUPLES ; 
 int LH_PAGE_TYPE ; 
 int LH_UNUSED_PAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(char *pagedata, BlockNumber blkno)
{
	Page		page = (Page) pagedata;
	HashPageOpaque opaque;
	int			pagetype;

	FUNC4(page);

	FUNC3(page);
	FUNC5(page);

	opaque = (HashPageOpaque) FUNC0(page);

	pagetype = opaque->hasho_flag & LH_PAGE_TYPE;
	if (pagetype == LH_UNUSED_PAGE)
	{
		/*
		 * Mask everything on a UNUSED page.
		 */
		FUNC2(page);
	}
	else if (pagetype == LH_BUCKET_PAGE ||
			 pagetype == LH_OVERFLOW_PAGE)
	{
		/*
		 * In hash bucket and overflow pages, it is possible to modify the
		 * LP_FLAGS without emitting any WAL record. Hence, mask the line
		 * pointer flags. See hashgettuple(), _hash_kill_items() for details.
		 */
		FUNC1(page);
	}

	/*
	 * It is possible that the hint bit LH_PAGE_HAS_DEAD_TUPLES may remain
	 * unlogged. So, mask it. See _hash_kill_items() for details.
	 */
	opaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;
}