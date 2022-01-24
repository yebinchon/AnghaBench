#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_1__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BT_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static Buffer
FUNC13(Relation rel, Buffer buf, Snapshot snapshot)
{
	Page		page;
	BTPageOpaque opaque;

	page = FUNC1(buf);
	opaque = (BTPageOpaque) FUNC6(page);

	for (;;)
	{
		BlockNumber obknum;
		BlockNumber lblkno;
		BlockNumber blkno;
		int			tries;

		/* if we're at end of tree, release buf and return failure */
		if (FUNC4(opaque))
		{
			FUNC11(rel, buf);
			break;
		}
		/* remember original page we are stepping left from */
		obknum = FUNC0(buf);
		/* step left */
		blkno = lblkno = opaque->btpo_prev;
		FUNC11(rel, buf);
		/* check for interrupts while we're not holding any buffer lock */
		FUNC2();
		buf = FUNC9(rel, blkno, BT_READ);
		page = FUNC1(buf);
		FUNC8(snapshot, rel, page);
		opaque = (BTPageOpaque) FUNC6(page);

		/*
		 * If this isn't the page we want, walk right till we find what we
		 * want --- but go no more than four hops (an arbitrary limit). If we
		 * don't find the correct page by then, the most likely bet is that
		 * the original page got deleted and isn't in the sibling chain at all
		 * anymore, not that its left sibling got split more than four times.
		 *
		 * Note that it is correct to test P_ISDELETED not P_IGNORE here,
		 * because half-dead pages are still in the sibling chain.  Caller
		 * must reject half-dead pages if wanted.
		 */
		tries = 0;
		for (;;)
		{
			if (!FUNC3(opaque) && opaque->btpo_next == obknum)
			{
				/* Found desired page, return it */
				return buf;
			}
			if (FUNC5(opaque) || ++tries > 4)
				break;
			blkno = opaque->btpo_next;
			buf = FUNC10(rel, buf, blkno, BT_READ);
			page = FUNC1(buf);
			FUNC8(snapshot, rel, page);
			opaque = (BTPageOpaque) FUNC6(page);
		}

		/* Return to the original page to see what's up */
		buf = FUNC10(rel, buf, obknum, BT_READ);
		page = FUNC1(buf);
		FUNC8(snapshot, rel, page);
		opaque = (BTPageOpaque) FUNC6(page);
		if (FUNC3(opaque))
		{
			/*
			 * It was deleted.  Move right to first nondeleted page (there
			 * must be one); that is the page that has acquired the deleted
			 * one's keyspace, so stepping left from it will take us where we
			 * want to be.
			 */
			for (;;)
			{
				if (FUNC5(opaque))
					FUNC12(ERROR, "fell off the end of index \"%s\"",
						 FUNC7(rel));
				blkno = opaque->btpo_next;
				buf = FUNC10(rel, buf, blkno, BT_READ);
				page = FUNC1(buf);
				FUNC8(snapshot, rel, page);
				opaque = (BTPageOpaque) FUNC6(page);
				if (!FUNC3(opaque))
					break;
			}

			/*
			 * Now return to top of loop, resetting obknum to point to this
			 * nondeleted page, and try again.
			 */
		}
		else
		{
			/*
			 * It wasn't deleted; the explanation had better be that the page
			 * to the left got split or deleted. Without this check, we'd go
			 * into an infinite loop if there's anything wrong.
			 */
			if (opaque->btpo_prev == lblkno)
				FUNC12(ERROR, "could not find left sibling of block %u in index \"%s\"",
					 obknum, FUNC7(rel));
			/* Okay to try again with new lblkno value */
		}
	}

	return InvalidBuffer;
}