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
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ ReadBufferMode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int InRecovery ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RBM_NORMAL ; 
 scalar_t__ RBM_NORMAL_NO_LOG ; 
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ; 
 scalar_t__ RBM_ZERO_AND_LOCK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC11(RelFileNode rnode, ForkNumber forknum,
					   BlockNumber blkno, ReadBufferMode mode)
{
	BlockNumber lastblock;
	Buffer		buffer;
	SMgrRelation smgr;

	FUNC0(blkno != P_NEW);

	/* Open the relation at smgr level */
	smgr = FUNC10(rnode, InvalidBackendId);

	/*
	 * Create the target file if it doesn't already exist.  This lets us cope
	 * if the replay sequence contains writes to a relation that is later
	 * deleted.  (The original coding of this routine would instead suppress
	 * the writes, but that seems like it risks losing valuable data if the
	 * filesystem loses an inode during a crash.  Better to write the data
	 * until we are actually told to delete the file.)
	 */
	FUNC8(smgr, forknum, true);

	lastblock = FUNC9(smgr, forknum);

	if (blkno < lastblock)
	{
		/* page exists in file */
		buffer = FUNC5(rnode, forknum, blkno,
										   mode, NULL);
	}
	else
	{
		/* hm, page doesn't exist in file */
		if (mode == RBM_NORMAL)
		{
			FUNC7(rnode, forknum, blkno, false);
			return InvalidBuffer;
		}
		if (mode == RBM_NORMAL_NO_LOG)
			return InvalidBuffer;
		/* OK to extend the file */
		/* we do this in recovery only - no rel-extension lock needed */
		FUNC0(InRecovery);
		buffer = InvalidBuffer;
		do
		{
			if (buffer != InvalidBuffer)
			{
				if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
					FUNC3(buffer, BUFFER_LOCK_UNLOCK);
				FUNC6(buffer);
			}
			buffer = FUNC5(rnode, forknum,
											   P_NEW, mode, NULL);
		}
		while (FUNC1(buffer) < blkno);
		/* Handle the corner case that P_NEW returns non-consecutive pages */
		if (FUNC1(buffer) != blkno)
		{
			if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
				FUNC3(buffer, BUFFER_LOCK_UNLOCK);
			FUNC6(buffer);
			buffer = FUNC5(rnode, forknum, blkno,
											   mode, NULL);
		}
	}

	if (mode == RBM_NORMAL)
	{
		/* check that page has been initialized */
		Page		page = (Page) FUNC2(buffer);

		/*
		 * We assume that PageIsNew is safe without a lock. During recovery,
		 * there should be no other backends that could modify the buffer at
		 * the same time.
		 */
		if (FUNC4(page))
		{
			FUNC6(buffer);
			FUNC7(rnode, forknum, blkno, true);
			return InvalidBuffer;
		}
	}

	return buffer;
}