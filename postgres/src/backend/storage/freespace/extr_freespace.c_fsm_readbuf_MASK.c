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
struct TYPE_9__ {scalar_t__ smgr_fsm_nblocks; } ;
struct TYPE_8__ {TYPE_2__* rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_ZERO_ON_ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Buffer
FUNC10(Relation rel, FSMAddress addr, bool extend)
{
	BlockNumber blkno = FUNC7(addr);
	Buffer		buf;

	FUNC5(rel);

	/*
	 * If we haven't cached the size of the FSM yet, check it first.  Also
	 * recheck if the requested block seems to be past end, since our cached
	 * value might be stale.  (We send smgr inval messages on truncation, but
	 * not on extension.)
	 */
	if (rel->rd_smgr->smgr_fsm_nblocks == InvalidBlockNumber ||
		blkno >= rel->rd_smgr->smgr_fsm_nblocks)
	{
		if (FUNC8(rel->rd_smgr, FSM_FORKNUM))
			rel->rd_smgr->smgr_fsm_nblocks = FUNC9(rel->rd_smgr,
														 FSM_FORKNUM);
		else
			rel->rd_smgr->smgr_fsm_nblocks = 0;
	}

	/* Handle requests beyond EOF */
	if (blkno >= rel->rd_smgr->smgr_fsm_nblocks)
	{
		if (extend)
			FUNC6(rel, blkno + 1);
		else
			return InvalidBuffer;
	}

	/*
	 * Use ZERO_ON_ERROR mode, and initialize the page if necessary. The FSM
	 * information is not accurate anyway, so it's better to clear corrupt
	 * pages than error out. Since the FSM changes are not WAL-logged, the
	 * so-called torn page problem on crash can lead to pages with corrupt
	 * headers, for example.
	 *
	 * The initialize-the-page part is trickier than it looks, because of the
	 * possibility of multiple backends doing this concurrently, and our
	 * desire to not uselessly take the buffer lock in the normal path where
	 * the page is OK.  We must take the lock to initialize the page, so
	 * recheck page newness after we have the lock, in case someone else
	 * already did it.  Also, because we initially check PageIsNew with no
	 * lock, it's possible to fall through and return the buffer while someone
	 * else is still initializing the page (i.e., we might see pd_upper as set
	 * but other page header fields are still zeroes).  This is harmless for
	 * callers that will take a buffer lock themselves, but some callers
	 * inspect the page without any lock at all.  The latter is OK only so
	 * long as it doesn't depend on the page header having correct contents.
	 * Current usage is safe because PageGetContents() does not require that.
	 */
	buf = FUNC4(rel, FSM_FORKNUM, blkno, RBM_ZERO_ON_ERROR, NULL);
	if (FUNC3(FUNC0(buf)))
	{
		FUNC1(buf, BUFFER_LOCK_EXCLUSIVE);
		if (FUNC3(FUNC0(buf)))
			FUNC2(FUNC0(buf), BLCKSZ, 0);
		FUNC1(buf, BUFFER_LOCK_UNLOCK);
	}
	return buf;
}