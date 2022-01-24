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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 int /*<<< orphan*/  GIST_UNLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC16(Relation r)
{
	Buffer		buffer;
	bool		needLock;

	/* First, try to get a page from FSM */
	for (;;)
	{
		BlockNumber blkno = FUNC2(r);

		if (blkno == InvalidBlockNumber)
			break;				/* nothing left in FSM */

		buffer = FUNC8(r, blkno);

		/*
		 * We have to guard against the possibility that someone else already
		 * recycled this page; the buffer may be locked if so.
		 */
		if (FUNC1(buffer))
		{
			Page		page = FUNC0(buffer);

			/*
			 * If the page was never initialized, it's OK to use.
			 */
			if (FUNC6(page))
				return buffer;

			FUNC15(r, buffer);

			/*
			 * Otherwise, recycle it if deleted, and too old to have any
			 * processes interested in it.
			 */
			if (FUNC13(page))
			{
				/*
				 * If we are generating WAL for Hot Standby then create a WAL
				 * record that will allow us to conflict with queries running
				 * on standby, in case they have snapshots older than the
				 * page's deleteXid.
				 */
				if (FUNC12() && FUNC9(r))
					FUNC14(r, blkno, FUNC3(page));

				return buffer;
			}

			FUNC4(buffer, GIST_UNLOCK);
		}

		/* Can't use it, so release buffer and try again */
		FUNC10(buffer);
	}

	/* Must extend the file */
	needLock = !FUNC7(r);

	if (needLock)
		FUNC5(r, ExclusiveLock);

	buffer = FUNC8(r, P_NEW);
	FUNC4(buffer, GIST_EXCLUSIVE);

	if (needLock)
		FUNC11(r, ExclusiveLock);

	return buffer;
}