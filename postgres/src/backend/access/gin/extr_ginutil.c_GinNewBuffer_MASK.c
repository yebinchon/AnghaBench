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
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC10(Relation index)
{
	Buffer		buffer;
	bool		needLock;

	/* First, try to get a page from FSM */
	for (;;)
	{
		BlockNumber blkno = FUNC2(index);

		if (blkno == InvalidBlockNumber)
			break;

		buffer = FUNC7(index, blkno);

		/*
		 * We have to guard against the possibility that someone else already
		 * recycled this page; the buffer may be locked if so.
		 */
		if (FUNC1(buffer))
		{
			if (FUNC3(FUNC0(buffer)))
				return buffer;	/* OK to use */

			FUNC4(buffer, GIN_UNLOCK);
		}

		/* Can't use it, so release buffer and try again */
		FUNC8(buffer);
	}

	/* Must extend the file */
	needLock = !FUNC6(index);
	if (needLock)
		FUNC5(index, ExclusiveLock);

	buffer = FUNC7(index, P_NEW);
	FUNC4(buffer, GIN_EXCLUSIVE);

	if (needLock)
		FUNC9(index, ExclusiveLock);

	return buffer;
}