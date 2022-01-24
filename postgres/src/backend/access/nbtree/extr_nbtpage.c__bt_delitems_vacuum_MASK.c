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
struct TYPE_3__ {int /*<<< orphan*/  lastBlockVacuumed; } ;
typedef  TYPE_1__ xl_btree_vacuum ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_4__ {int /*<<< orphan*/  btpo_flags; scalar_t__ btpo_cycleid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BTP_HAS_GARBAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  SizeOfBtreeVacuum ; 
 int /*<<< orphan*/  XLOG_BTREE_VACUUM ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

void
FUNC13(Relation rel, Buffer buf,
					OffsetNumber *itemnos, int nitems,
					BlockNumber lastBlockVacuumed)
{
	Page		page = FUNC0(buf);
	BTPageOpaque opaque;

	/* No ereport(ERROR) until changes are logged */
	FUNC7();

	/* Fix the page */
	if (nitems > 0)
		FUNC4(page, itemnos, nitems);

	/*
	 * We can clear the vacuum cycle ID since this page has certainly been
	 * processed by the current vacuum scan.
	 */
	opaque = (BTPageOpaque) FUNC3(page);
	opaque->btpo_cycleid = 0;

	/*
	 * Mark the page as not containing any LP_DEAD items.  This is not
	 * certainly true (there might be some that have recently been marked, but
	 * weren't included in our target-item list), but it will almost always be
	 * true and it doesn't seem worth an additional page scan to check it.
	 * Remember that BTP_HAS_GARBAGE is only a hint anyway.
	 */
	opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

	FUNC2(buf);

	/* XLOG stuff */
	if (FUNC6(rel))
	{
		XLogRecPtr	recptr;
		xl_btree_vacuum xlrec_vacuum;

		xlrec_vacuum.lastBlockVacuumed = lastBlockVacuumed;

		FUNC8();
		FUNC11(0, buf, REGBUF_STANDARD);
		FUNC12((char *) &xlrec_vacuum, SizeOfBtreeVacuum);

		/*
		 * The target-offsets array is not in the buffer, but pretend that it
		 * is.  When XLogInsert stores the whole buffer, the offsets array
		 * need not be stored too.
		 */
		if (nitems > 0)
			FUNC10(0, (char *) itemnos, nitems * sizeof(OffsetNumber));

		recptr = FUNC9(RM_BTREE_ID, XLOG_BTREE_VACUUM);

		FUNC5(page, recptr);
	}

	FUNC1();
}