#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_9__ {int /*<<< orphan*/  btpo_next; } ;
struct TYPE_8__ {scalar_t__ nextkey; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_1__* BTScanInsert ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int BT_READ ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_HIKEY ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

Buffer
FUNC15(Relation rel,
			  BTScanInsert key,
			  Buffer buf,
			  bool forupdate,
			  BTStack stack,
			  int access,
			  Snapshot snapshot)
{
	Page		page;
	BTPageOpaque opaque;
	int32		cmpval;

	/*
	 * When nextkey = false (normal case): if the scan key that brought us to
	 * this page is > the high key stored on the page, then the page has split
	 * and we need to move right.  (pg_upgrade'd !heapkeyspace indexes could
	 * have some duplicates to the right as well as the left, but that's
	 * something that's only ever dealt with on the leaf level, after
	 * _bt_search has found an initial leaf page.)
	 *
	 * When nextkey = true: move right if the scan key is >= page's high key.
	 * (Note that key.scantid cannot be set in this case.)
	 *
	 * The page could even have split more than once, so scan as far as
	 * needed.
	 *
	 * We also have to move right if we followed a link that brought us to a
	 * dead page.
	 */
	cmpval = key->nextkey ? 0 : 1;

	for (;;)
	{
		page = FUNC1(buf);
		FUNC8(snapshot, rel, page);
		opaque = (BTPageOpaque) FUNC6(page);

		if (FUNC5(opaque))
			break;

		/*
		 * Finish any incomplete splits we encounter along the way.
		 */
		if (forupdate && FUNC4(opaque))
		{
			BlockNumber blkno = FUNC0(buf);

			/* upgrade our lock if necessary */
			if (access == BT_READ)
			{
				FUNC2(buf, BUFFER_LOCK_UNLOCK);
				FUNC2(buf, BT_WRITE);
			}

			if (FUNC4(opaque))
				FUNC10(rel, buf, stack);
			else
				FUNC13(rel, buf);

			/* re-acquire the lock in the right mode, and re-check */
			buf = FUNC11(rel, blkno, access);
			continue;
		}

		if (FUNC3(opaque) || FUNC9(rel, key, page, P_HIKEY) >= cmpval)
		{
			/* step right one page */
			buf = FUNC12(rel, buf, opaque->btpo_next, access);
			continue;
		}
		else
			break;
	}

	if (FUNC3(opaque))
		FUNC14(ERROR, "fell off the end of index \"%s\"",
			 FUNC7(rel));

	return buf;
}