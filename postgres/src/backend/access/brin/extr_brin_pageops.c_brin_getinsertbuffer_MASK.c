#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  BrinMaxItemSize ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Buffer
FUNC25(Relation irel, Buffer oldbuf, Size itemsz,
					 bool *extended)
{
	BlockNumber oldblk;
	BlockNumber newblk;
	Page		page;
	Size		freespace;

	/* callers must have checked */
	FUNC0(itemsz <= BrinMaxItemSize);

	if (FUNC5(oldbuf))
		oldblk = FUNC3(oldbuf);
	else
		oldblk = InvalidBlockNumber;

	/* Choose initial target page, re-using existing target if known */
	newblk = FUNC15(irel);
	if (newblk == InvalidBlockNumber)
		newblk = FUNC8(irel, itemsz);

	/*
	 * Loop until we find a page with sufficient free space.  By the time we
	 * return to caller out of this loop, both buffers are valid and locked;
	 * if we have to restart here, neither page is locked and newblk isn't
	 * pinned (if it's even valid).
	 */
	for (;;)
	{
		Buffer		buf;
		bool		extensionLockHeld = false;

		FUNC6();

		*extended = false;

		if (newblk == InvalidBlockNumber)
		{
			/*
			 * There's not enough free space in any existing index page,
			 * according to the FSM: extend the relation to obtain a shiny new
			 * page.
			 */
			if (!FUNC11(irel))
			{
				FUNC10(irel, ExclusiveLock);
				extensionLockHeld = true;
			}
			buf = FUNC12(irel, P_NEW);
			newblk = FUNC3(buf);
			*extended = true;

			FUNC2((DEBUG2, "brin_getinsertbuffer: extending to page %u",
					   FUNC3(buf)));
		}
		else if (newblk == oldblk)
		{
			/*
			 * There's an odd corner-case here where the FSM is out-of-date,
			 * and gave us the old page.
			 */
			buf = oldbuf;
		}
		else
		{
			buf = FUNC12(irel, newblk);
		}

		/*
		 * We lock the old buffer first, if it's earlier than the new one; but
		 * then we need to check that it hasn't been turned into a revmap page
		 * concurrently.  If we detect that that happened, give up and tell
		 * caller to start over.
		 */
		if (FUNC5(oldbuf) && oldblk < newblk)
		{
			FUNC9(oldbuf, BUFFER_LOCK_EXCLUSIVE);
			if (!FUNC1(FUNC4(oldbuf)))
			{
				FUNC9(oldbuf, BUFFER_LOCK_UNLOCK);

				/*
				 * It is possible that the new page was obtained from
				 * extending the relation.  In that case, we must be sure to
				 * record it in the FSM before leaving, because otherwise the
				 * space would be lost forever.  However, we cannot let an
				 * uninitialized page get in the FSM, so we need to initialize
				 * it first.
				 */
				if (*extended)
					FUNC21(irel, buf);

				if (extensionLockHeld)
					FUNC18(irel, ExclusiveLock);

				FUNC17(buf);

				if (*extended)
				{
					FUNC7(irel, newblk, newblk + 1);
					/* shouldn't matter, but don't confuse caller */
					*extended = false;
				}

				return InvalidBuffer;
			}
		}

		FUNC9(buf, BUFFER_LOCK_EXCLUSIVE);

		if (extensionLockHeld)
			FUNC18(irel, ExclusiveLock);

		page = FUNC4(buf);

		/*
		 * We have a new buffer to insert into.  Check that the new page has
		 * enough free space, and return it if it does; otherwise start over.
		 * (br_page_get_freespace also checks that the FSM didn't hand us a
		 * page that has since been repurposed for the revmap.)
		 */
		freespace = *extended ?
			BrinMaxItemSize : FUNC20(page);
		if (freespace >= itemsz)
		{
			FUNC16(irel, newblk);

			/*
			 * Lock the old buffer if not locked already.  Note that in this
			 * case we know for sure it's a regular page: it's later than the
			 * new page we just got, which is not a revmap page, and revmap
			 * pages are always consecutive.
			 */
			if (FUNC5(oldbuf) && oldblk > newblk)
			{
				FUNC9(oldbuf, BUFFER_LOCK_EXCLUSIVE);
				FUNC0(FUNC1(FUNC4(oldbuf)));
			}

			return buf;
		}

		/* This page is no good. */

		/*
		 * If an entirely new page does not contain enough free space for the
		 * new item, then surely that item is oversized.  Complain loudly; but
		 * first make sure we initialize the page and record it as free, for
		 * next time.
		 */
		if (*extended)
		{
			FUNC21(irel, buf);
			/* since this should not happen, skip FreeSpaceMapVacuum */

			FUNC22(ERROR,
					(FUNC23(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC24("index row size %zu exceeds maximum %zu for index \"%s\"",
							itemsz, freespace, FUNC14(irel))));
			return InvalidBuffer;	/* keep compiler quiet */
		}

		if (newblk != oldblk)
			FUNC19(buf);
		if (FUNC5(oldbuf) && oldblk <= newblk)
			FUNC9(oldbuf, BUFFER_LOCK_UNLOCK);

		/*
		 * Update the FSM with the new, presumably smaller, freespace value
		 * for this page, then search for a new target page.
		 */
		newblk = FUNC13(irel, newblk, freespace, itemsz);
	}
}