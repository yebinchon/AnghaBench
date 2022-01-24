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
typedef  size_t uint8 ;
typedef  int /*<<< orphan*/  XLogRedoAction ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ EndRecPtr; TYPE_1__* blocks; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_8__ {int flags; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  ReadBufferMode ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BKPBLOCK_WILL_INIT ; 
 int /*<<< orphan*/  BLK_DONE ; 
 int /*<<< orphan*/  BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BLK_NOTFOUND ; 
 int /*<<< orphan*/  BLK_RESTORED ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INIT_FORKNUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RBM_ZERO_AND_CLEANUP_LOCK ; 
 int /*<<< orphan*/  RBM_ZERO_AND_LOCK ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,size_t,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 

XLogRedoAction
FUNC16(XLogReaderState *record,
							  uint8 block_id,
							  ReadBufferMode mode, bool get_cleanup_lock,
							  Buffer *buf)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	RelFileNode rnode;
	ForkNumber	forknum;
	BlockNumber blkno;
	Page		page;
	bool		zeromode;
	bool		willinit;

	if (!FUNC13(record, block_id, &rnode, &forknum, &blkno))
	{
		/* Caller specified a bogus block_id */
		FUNC15(PANIC, "failed to locate backup block with ID %d", block_id);
	}

	/*
	 * Make sure that if the block is marked with WILL_INIT, the caller is
	 * going to initialize it. And vice versa.
	 */
	zeromode = (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK);
	willinit = (record->blocks[block_id].flags & BKPBLOCK_WILL_INIT) != 0;
	if (willinit && !zeromode)
		FUNC15(PANIC, "block with WILL_INIT flag in WAL record must be zeroed by redo routine");
	if (!willinit && zeromode)
		FUNC15(PANIC, "block to be initialized in redo routine must be marked with WILL_INIT flag in the WAL record");

	/* If it has a full-page image and it should be restored, do it. */
	if (FUNC12(record, block_id))
	{
		FUNC0(FUNC14(record, block_id));
		*buf = FUNC11(rnode, forknum, blkno,
									  get_cleanup_lock ? RBM_ZERO_AND_CLEANUP_LOCK : RBM_ZERO_AND_LOCK);
		page = FUNC1(*buf);
		if (!FUNC10(record, block_id, page))
			FUNC15(ERROR, "failed to restore block image");

		/*
		 * The page may be uninitialized. If so, we can't set the LSN because
		 * that would corrupt the page.
		 */
		if (!FUNC8(page))
		{
			FUNC9(page, lsn);
		}

		FUNC6(*buf);

		/*
		 * At the end of crash recovery the init forks of unlogged relations
		 * are copied, without going through shared buffers. So we need to
		 * force the on-disk state of init forks to always be in sync with the
		 * state in shared buffers.
		 */
		if (forknum == INIT_FORKNUM)
			FUNC3(*buf);

		return BLK_RESTORED;
	}
	else
	{
		*buf = FUNC11(rnode, forknum, blkno, mode);
		if (FUNC2(*buf))
		{
			if (mode != RBM_ZERO_AND_LOCK && mode != RBM_ZERO_AND_CLEANUP_LOCK)
			{
				if (get_cleanup_lock)
					FUNC5(*buf);
				else
					FUNC4(*buf, BUFFER_LOCK_EXCLUSIVE);
			}
			if (lsn <= FUNC7(FUNC1(*buf)))
				return BLK_DONE;
			else
				return BLK_NEEDS_REDO;
		}
		else
			return BLK_NOTFOUND;
	}
}