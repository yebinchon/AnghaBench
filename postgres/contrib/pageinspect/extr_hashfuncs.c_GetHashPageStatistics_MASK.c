#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hasho_page_id; int /*<<< orphan*/  hasho_flag; int /*<<< orphan*/  hasho_bucket; int /*<<< orphan*/  hasho_nextblkno; int /*<<< orphan*/  hasho_prevblkno; } ;
struct TYPE_4__ {int /*<<< orphan*/  free_size; scalar_t__ dead_items; scalar_t__ live_items; int /*<<< orphan*/  hasho_page_id; int /*<<< orphan*/  hasho_flag; int /*<<< orphan*/  hasho_bucket; int /*<<< orphan*/  hasho_nextblkno; int /*<<< orphan*/  hasho_prevblkno; int /*<<< orphan*/  page_size; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__ HashPageStat ;
typedef  TYPE_2__* HashPageOpaque ;

/* Variables and functions */
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Page page, HashPageStat *stat)
{
	OffsetNumber maxoff = FUNC3(page);
	HashPageOpaque opaque = (HashPageOpaque) FUNC5(page);
	int			off;

	stat->dead_items = stat->live_items = 0;
	stat->page_size = FUNC4(page);

	/* hash page opaque data */
	stat->hasho_prevblkno = opaque->hasho_prevblkno;
	stat->hasho_nextblkno = opaque->hasho_nextblkno;
	stat->hasho_bucket = opaque->hasho_bucket;
	stat->hasho_flag = opaque->hasho_flag;
	stat->hasho_page_id = opaque->hasho_page_id;

	/* count live and dead tuples, and free space */
	for (off = FirstOffsetNumber; off <= maxoff; off++)
	{
		ItemId		id = FUNC2(page, off);

		if (!FUNC0(id))
			stat->live_items++;
		else
			stat->dead_items++;
	}
	stat->free_size = FUNC1(page);
}