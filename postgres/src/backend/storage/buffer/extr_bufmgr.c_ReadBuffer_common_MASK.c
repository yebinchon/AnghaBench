#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_27__ {int /*<<< orphan*/  blk_read_time; int /*<<< orphan*/  shared_blks_read; int /*<<< orphan*/  shared_blks_written; int /*<<< orphan*/  shared_blks_hit; int /*<<< orphan*/  local_blks_read; int /*<<< orphan*/  local_blks_written; int /*<<< orphan*/  local_blks_hit; } ;
struct TYPE_23__ {int /*<<< orphan*/  relNode; int /*<<< orphan*/  dbNode; int /*<<< orphan*/  spcNode; } ;
struct TYPE_26__ {int /*<<< orphan*/  backend; TYPE_1__ node; } ;
struct TYPE_25__ {int /*<<< orphan*/  state; } ;
struct TYPE_24__ {TYPE_7__ smgr_rnode; } ;
typedef  TYPE_2__* SMgrRelation ;
typedef  scalar_t__ ReadBufferMode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  TYPE_3__ BufferDesc ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  scalar_t__ Block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BLCKSZ ; 
 int BM_VALID ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 TYPE_3__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_NEW ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RBM_NORMAL ; 
 scalar_t__ RBM_NORMAL_NO_LOG ; 
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ; 
 scalar_t__ RBM_ZERO_AND_LOCK ; 
 scalar_t__ RBM_ZERO_ON_ERROR ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int) ; 
 scalar_t__ VacuumCostActive ; 
 int /*<<< orphan*/  VacuumCostBalance ; 
 scalar_t__ VacuumCostPageHit ; 
 scalar_t__ VacuumCostPageMiss ; 
 int /*<<< orphan*/  VacuumPageHit ; 
 int /*<<< orphan*/  VacuumPageMiss ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ pgBufferUsage ; 
 int FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_7__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ track_io_timing ; 
 scalar_t__ zero_damaged_pages ; 

__attribute__((used)) static Buffer
FUNC35(SMgrRelation smgr, char relpersistence, ForkNumber forkNum,
				  BlockNumber blockNum, ReadBufferMode mode,
				  BufferAccessStrategy strategy, bool *hit)
{
	BufferDesc *bufHdr;
	Block		bufBlock;
	bool		found;
	bool		isExtend;
	bool		isLocalBuf = FUNC18(smgr);

	*hit = false;

	/* Make sure we will have room to remember the buffer pin */
	FUNC17(CurrentResourceOwner);

	isExtend = (blockNum == P_NEW);

	FUNC21(forkNum, blockNum,
									   smgr->smgr_rnode.node.spcNode,
									   smgr->smgr_rnode.node.dbNode,
									   smgr->smgr_rnode.node.relNode,
									   smgr->smgr_rnode.backend,
									   isExtend);

	/* Substitute proper block number if caller asked for P_NEW */
	if (isExtend)
		blockNum = FUNC33(smgr, forkNum);

	if (isLocalBuf)
	{
		bufHdr = FUNC11(smgr, forkNum, blockNum, &found);
		if (found)
			pgBufferUsage.local_blks_hit++;
		else if (isExtend)
			pgBufferUsage.local_blks_written++;
		else if (mode == RBM_NORMAL || mode == RBM_NORMAL_NO_LOG ||
				 mode == RBM_ZERO_ON_ERROR)
			pgBufferUsage.local_blks_read++;
	}
	else
	{
		/*
		 * lookup the buffer.  IO_IN_PROGRESS is set if the requested block is
		 * not currently in memory.
		 */
		bufHdr = FUNC2(smgr, relpersistence, forkNum, blockNum,
							 strategy, &found);
		if (found)
			pgBufferUsage.shared_blks_hit++;
		else if (isExtend)
			pgBufferUsage.shared_blks_written++;
		else if (mode == RBM_NORMAL || mode == RBM_NORMAL_NO_LOG ||
				 mode == RBM_ZERO_ON_ERROR)
			pgBufferUsage.shared_blks_read++;
	}

	/* At this point we do NOT hold any locks. */

	/* if it was already in the buffer pool, we're done */
	if (found)
	{
		if (!isExtend)
		{
			/* Just need to update stats before we exit */
			*hit = true;
			VacuumPageHit++;

			if (VacuumCostActive)
				VacuumCostBalance += VacuumCostPageHit;

			FUNC20(forkNum, blockNum,
											  smgr->smgr_rnode.node.spcNode,
											  smgr->smgr_rnode.node.dbNode,
											  smgr->smgr_rnode.node.relNode,
											  smgr->smgr_rnode.backend,
											  isExtend,
											  found);

			/*
			 * In RBM_ZERO_AND_LOCK mode the caller expects the page to be
			 * locked on return.
			 */
			if (!isLocalBuf)
			{
				if (mode == RBM_ZERO_AND_LOCK)
					FUNC9(FUNC4(bufHdr),
								  LW_EXCLUSIVE);
				else if (mode == RBM_ZERO_AND_CLEANUP_LOCK)
					FUNC13(FUNC3(bufHdr));
			}

			return FUNC3(bufHdr);
		}

		/*
		 * We get here only in the corner case where we are trying to extend
		 * the relation but we found a pre-existing buffer marked BM_VALID.
		 * This can happen because mdread doesn't complain about reads beyond
		 * EOF (when zero_damaged_pages is ON) and so a previous attempt to
		 * read a block beyond EOF could have left a "valid" zero-filled
		 * buffer.  Unfortunately, we have also seen this case occurring
		 * because of buggy Linux kernels that sometimes return an
		 * lseek(SEEK_END) result that doesn't account for a recent write. In
		 * that situation, the pre-existing buffer would contain valid data
		 * that we don't want to overwrite.  Since the legitimate case should
		 * always have left a zero-filled buffer, complain if not PageIsNew.
		 */
		bufBlock = isLocalBuf ? FUNC10(bufHdr) : FUNC1(bufHdr);
		if (!FUNC15((Page) bufBlock))
			FUNC24(ERROR,
					(FUNC27("unexpected data beyond EOF in block %u of relation %s",
							blockNum, FUNC31(smgr->smgr_rnode, forkNum)),
					 FUNC26("This has been seen to occur with buggy kernels; consider updating your system.")));

		/*
		 * We *must* do smgrextend before succeeding, else the page will not
		 * be reserved by the kernel, and the next P_NEW call will decide to
		 * return the same page.  Clear the BM_VALID bit, do the StartBufferIO
		 * call that BufferAlloc didn't, and proceed.
		 */
		if (isLocalBuf)
		{
			/* Only need to adjust flags */
			uint32		buf_state = FUNC28(&bufHdr->state);

			FUNC0(buf_state & BM_VALID);
			buf_state &= ~BM_VALID;
			FUNC29(&bufHdr->state, buf_state);
		}
		else
		{
			/*
			 * Loop to handle the very small possibility that someone re-sets
			 * BM_VALID between our clearing it and StartBufferIO inspecting
			 * it.
			 */
			do
			{
				uint32		buf_state = FUNC12(bufHdr);

				FUNC0(buf_state & BM_VALID);
				buf_state &= ~BM_VALID;
				FUNC23(bufHdr, buf_state);
			} while (!FUNC19(bufHdr, true));
		}
	}

	/*
	 * if we have gotten to this point, we have allocated a buffer for the
	 * page but its contents are not yet valid.  IO_IN_PROGRESS is set for it,
	 * if it's a shared buffer.
	 *
	 * Note: if smgrextend fails, we will end up with a buffer that is
	 * allocated but not marked BM_VALID.  P_NEW will still select the same
	 * block number (because the relation didn't get any longer on disk) and
	 * so future attempts to extend the relation will find the same buffer (if
	 * it's not been recycled) but come right back here to try smgrextend
	 * again.
	 */
	FUNC0(!(FUNC28(&bufHdr->state) & BM_VALID));	/* spinlock not needed */

	bufBlock = isLocalBuf ? FUNC10(bufHdr) : FUNC1(bufHdr);

	if (isExtend)
	{
		/* new buffers are zero-filled */
		FUNC14((char *) bufBlock, 0, BLCKSZ);
		/* don't set checksum for all-zero page */
		FUNC32(smgr, forkNum, blockNum, (char *) bufBlock, false);

		/*
		 * NB: we're *not* doing a ScheduleBufferTagForWriteback here;
		 * although we're essentially performing a write. At least on linux
		 * doing so defeats the 'delayed allocation' mechanism, leading to
		 * increased file fragmentation.
		 */
	}
	else
	{
		/*
		 * Read in the page, unless the caller intends to overwrite it and
		 * just wants us to allocate a buffer.
		 */
		if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
			FUNC14((char *) bufBlock, 0, BLCKSZ);
		else
		{
			instr_time	io_start,
						io_time;

			if (track_io_timing)
				FUNC7(io_start);

			FUNC34(smgr, forkNum, blockNum, (char *) bufBlock);

			if (track_io_timing)
			{
				FUNC7(io_time);
				FUNC8(io_time, io_start);
				FUNC30(FUNC6(io_time));
				FUNC5(pgBufferUsage.blk_read_time, io_time);
			}

			/* check for garbage data */
			if (!FUNC16((Page) bufBlock, blockNum))
			{
				if (mode == RBM_ZERO_ON_ERROR || zero_damaged_pages)
				{
					FUNC24(WARNING,
							(FUNC25(ERRCODE_DATA_CORRUPTED),
							 FUNC27("invalid page in block %u of relation %s; zeroing out page",
									blockNum,
									FUNC31(smgr->smgr_rnode, forkNum))));
					FUNC14((char *) bufBlock, 0, BLCKSZ);
				}
				else
					FUNC24(ERROR,
							(FUNC25(ERRCODE_DATA_CORRUPTED),
							 FUNC27("invalid page in block %u of relation %s",
									blockNum,
									FUNC31(smgr->smgr_rnode, forkNum))));
			}
		}
	}

	/*
	 * In RBM_ZERO_AND_LOCK mode, grab the buffer content lock before marking
	 * the page as valid, to make sure that no other backend sees the zeroed
	 * page before the caller has had a chance to initialize it.
	 *
	 * Since no-one else can be looking at the page contents yet, there is no
	 * difference between an exclusive lock and a cleanup-strength lock. (Note
	 * that we cannot use LockBuffer() or LockBufferForCleanup() here, because
	 * they assert that the buffer is already valid.)
	 */
	if ((mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK) &&
		!isLocalBuf)
	{
		FUNC9(FUNC4(bufHdr), LW_EXCLUSIVE);
	}

	if (isLocalBuf)
	{
		/* Only need to adjust flags */
		uint32		buf_state = FUNC28(&bufHdr->state);

		buf_state |= BM_VALID;
		FUNC29(&bufHdr->state, buf_state);
	}
	else
	{
		/* Set BM_VALID, terminate IO, and wake up any waiters */
		FUNC22(bufHdr, false, BM_VALID);
	}

	VacuumPageMiss++;
	if (VacuumCostActive)
		VacuumCostBalance += VacuumCostPageMiss;

	FUNC20(forkNum, blockNum,
									  smgr->smgr_rnode.node.spcNode,
									  smgr->smgr_rnode.node.dbNode,
									  smgr->smgr_rnode.node.relNode,
									  smgr->smgr_rnode.backend,
									  isExtend,
									  found);

	return FUNC3(bufHdr);
}