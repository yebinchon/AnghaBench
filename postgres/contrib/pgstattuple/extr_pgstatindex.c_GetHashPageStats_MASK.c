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
struct TYPE_3__ {int /*<<< orphan*/  free_space; int /*<<< orphan*/  dead_items; int /*<<< orphan*/  live_items; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__ HashIndexStat ;

/* Variables and functions */
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Page page, HashIndexStat *stats)
{
	OffsetNumber maxoff = FUNC3(page);
	int			off;

	/* count live and dead tuples, and free space */
	for (off = FirstOffsetNumber; off <= maxoff; off++)
	{
		ItemId		id = FUNC2(page, off);

		if (!FUNC0(id))
			stats->live_items++;
		else
			stats->dead_items++;
	}
	stats->free_space += FUNC1(page);
}