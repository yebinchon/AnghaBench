#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  nitems; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_btree_delete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int /*<<< orphan*/  btpo_flags; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BTP_HAS_GARBAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfBtreeDelete ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_btree_delete *xlrec = (xl_btree_delete *) FUNC10(record);
	Buffer		buffer;
	Page		page;
	BTPageOpaque opaque;

	/*
	 * If we have any conflict processing to do, it must happen before we
	 * update the page.
	 *
	 * Btree delete records can conflict with standby queries.  You might
	 * think that vacuum records would conflict as well, but we've handled
	 * that already.  XLOG_HEAP2_CLEANUP_INFO records provide the highest xid
	 * cleaned by the vacuum of the heap and so we can resolve any conflicts
	 * just once when that arrives.  After that we know that no conflicts
	 * exist from individual btree vacuum records on that index.
	 */
	if (InHotStandby)
	{
		RelFileNode rnode;

		FUNC9(record, 0, &rnode, NULL, NULL);

		FUNC6(xlrec->latestRemovedXid, rnode);
	}

	/*
	 * We don't need to take a cleanup lock to apply these changes. See
	 * nbtree/README for details.
	 */
	if (FUNC8(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = (Page) FUNC0(buffer);

		if (FUNC11(record) > SizeOfBtreeDelete)
		{
			OffsetNumber *unused;

			unused = (OffsetNumber *) ((char *) xlrec + SizeOfBtreeDelete);

			FUNC4(page, unused, xlrec->nitems);
		}

		/*
		 * Mark the page as not containing any LP_DEAD items --- see comments
		 * in _bt_delitems_delete().
		 */
		opaque = (BTPageOpaque) FUNC3(page);
		opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC7(buffer);
}