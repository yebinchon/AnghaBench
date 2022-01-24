#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  level; int /*<<< orphan*/  xact; } ;
struct TYPE_15__ {int /*<<< orphan*/  btpo_cycleid; int /*<<< orphan*/  btpo_flags; TYPE_2__ btpo; int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_prev; } ;
struct TYPE_11__ {int /*<<< orphan*/  level; int /*<<< orphan*/  xact; } ;
struct TYPE_14__ {int dead_items; int live_items; char type; int avg_item_size; int /*<<< orphan*/  free_size; int /*<<< orphan*/  btpo_cycleid; int /*<<< orphan*/  btpo_flags; TYPE_1__ btpo; int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_prev; int /*<<< orphan*/  page_size; scalar_t__ max_avail; int /*<<< orphan*/  blkno; } ;
struct TYPE_13__ {scalar_t__ pd_special; } ;
typedef  TYPE_3__* PageHeader ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_4__ BTPageStat ;
typedef  TYPE_5__* BTPageOpaque ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfPageHeaderData ; 

__attribute__((used)) static void
FUNC13(BlockNumber blkno, Buffer buffer, BTPageStat *stat)
{
	Page		page = FUNC0(buffer);
	PageHeader	phdr = (PageHeader) page;
	OffsetNumber maxoff = FUNC10(page);
	BTPageOpaque opaque = (BTPageOpaque) FUNC12(page);
	int			item_size = 0;
	int			off;

	stat->blkno = blkno;

	stat->max_avail = BLCKSZ - (BLCKSZ - phdr->pd_special + SizeOfPageHeaderData);

	stat->dead_items = stat->live_items = 0;

	stat->page_size = FUNC11(page);

	/* page type (flags) */
	if (FUNC4(opaque))
	{
		stat->type = 'd';
		stat->btpo.xact = opaque->btpo.xact;
		return;
	}
	else if (FUNC3(opaque))
		stat->type = 'e';
	else if (FUNC5(opaque))
		stat->type = 'l';
	else if (FUNC6(opaque))
		stat->type = 'r';
	else
		stat->type = 'i';

	/* btpage opaque data */
	stat->btpo_prev = opaque->btpo_prev;
	stat->btpo_next = opaque->btpo_next;
	stat->btpo.level = opaque->btpo.level;
	stat->btpo_flags = opaque->btpo_flags;
	stat->btpo_cycleid = opaque->btpo_cycleid;

	/* count live and dead tuples, and free space */
	for (off = FirstOffsetNumber; off <= maxoff; off++)
	{
		IndexTuple	itup;

		ItemId		id = FUNC9(page, off);

		itup = (IndexTuple) FUNC8(page, id);

		item_size += FUNC1(itup);

		if (!FUNC2(id))
			stat->live_items++;
		else
			stat->dead_items++;
	}
	stat->free_size = FUNC7(page);

	if ((stat->live_items + stat->dead_items) > 0)
		stat->avg_item_size = item_size / (stat->live_items + stat->dead_items);
	else
		stat->avg_item_size = 0;
}