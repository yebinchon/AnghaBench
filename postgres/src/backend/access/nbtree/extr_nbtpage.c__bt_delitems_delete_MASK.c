#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nitems; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_btree_delete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {int /*<<< orphan*/  btpo_flags; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_HAS_GARBAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int SizeOfBtreeDelete ; 
 int /*<<< orphan*/  XLOG_BTREE_DELETE ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC15(Relation rel, Buffer buf,
					OffsetNumber *itemnos, int nitems,
					Relation heapRel)
{
	Page		page = FUNC1(buf);
	BTPageOpaque opaque;
	TransactionId latestRemovedXid = InvalidTransactionId;

	/* Shouldn't be called unless there's something to do */
	FUNC0(nitems > 0);

	if (FUNC13() && FUNC7(rel))
		latestRemovedXid =
			FUNC14(rel, heapRel, buf,
												 itemnos, nitems);

	/* No ereport(ERROR) until changes are logged */
	FUNC8();

	/* Fix the page */
	FUNC5(page, itemnos, nitems);

	/*
	 * Unlike _bt_delitems_vacuum, we *must not* clear the vacuum cycle ID,
	 * because this is not called by VACUUM.
	 */

	/*
	 * Mark the page as not containing any LP_DEAD items.  This is not
	 * certainly true (there might be some that have recently been marked, but
	 * weren't included in our target-item list), but it will almost always be
	 * true and it doesn't seem worth an additional page scan to check it.
	 * Remember that BTP_HAS_GARBAGE is only a hint anyway.
	 */
	opaque = (BTPageOpaque) FUNC4(page);
	opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

	FUNC3(buf);

	/* XLOG stuff */
	if (FUNC7(rel))
	{
		XLogRecPtr	recptr;
		xl_btree_delete xlrec_delete;

		xlrec_delete.latestRemovedXid = latestRemovedXid;
		xlrec_delete.nitems = nitems;

		FUNC9();
		FUNC11(0, buf, REGBUF_STANDARD);
		FUNC12((char *) &xlrec_delete, SizeOfBtreeDelete);

		/*
		 * We need the target-offsets array whether or not we store the whole
		 * buffer, to allow us to find the latestRemovedXid on a standby
		 * server.
		 */
		FUNC12((char *) itemnos, nitems * sizeof(OffsetNumber));

		recptr = FUNC10(RM_BTREE_ID, XLOG_BTREE_DELETE);

		FUNC6(page, recptr);
	}

	FUNC2();
}