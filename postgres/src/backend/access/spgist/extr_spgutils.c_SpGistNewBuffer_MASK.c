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
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC13(Relation index)
{
	Buffer		buffer;
	bool		needLock;

	/* First, try to get a page from FSM */
	for (;;)
	{
		BlockNumber blkno = FUNC2(index);

		if (blkno == InvalidBlockNumber)
			break;				/* nothing known to FSM */

		/*
		 * The fixed pages shouldn't ever be listed in FSM, but just in case
		 * one is, ignore it.
		 */
		if (FUNC10(blkno))
			continue;

		buffer = FUNC8(index, blkno);

		/*
		 * We have to guard against the possibility that someone else already
		 * recycled this page; the buffer may be locked if so.
		 */
		if (FUNC1(buffer))
		{
			Page		page = FUNC0(buffer);

			if (FUNC6(page))
				return buffer;	/* OK to use, if never initialized */

			if (FUNC11(page) || FUNC5(page))
				return buffer;	/* OK to use */

			FUNC3(buffer, BUFFER_LOCK_UNLOCK);
		}

		/* Can't use it, so release buffer and try again */
		FUNC9(buffer);
	}

	/* Must extend the file */
	needLock = !FUNC7(index);
	if (needLock)
		FUNC4(index, ExclusiveLock);

	buffer = FUNC8(index, P_NEW);
	FUNC3(buffer, BUFFER_LOCK_EXCLUSIVE);

	if (needLock)
		FUNC12(index, ExclusiveLock);

	return buffer;
}