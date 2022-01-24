#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int delayChkpt; } ;
struct TYPE_9__ {int /*<<< orphan*/  shared_blks_dirtied; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ BufferDesc ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_DIRTY ; 
 int BM_JUST_DIRTIED ; 
 int BM_PERMANENT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_4__* MyPgXact ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 scalar_t__ VacuumCostActive ; 
 int /*<<< orphan*/  VacuumCostBalance ; 
 scalar_t__ VacuumCostPageDirty ; 
 int /*<<< orphan*/  VacuumPageDirty ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_2__ pgBufferUsage ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 

void
FUNC19(Buffer buffer, bool buffer_std)
{
	BufferDesc *bufHdr;
	Page		page = FUNC3(buffer);

	if (!FUNC5(buffer))
		FUNC17(ERROR, "bad buffer ID: %d", buffer);

	if (FUNC4(buffer))
	{
		FUNC10(buffer);
		return;
	}

	bufHdr = FUNC6(buffer - 1);

	FUNC0(FUNC7(buffer) > 0);
	/* here, either share or exclusive lock is OK */
	FUNC0(FUNC8(FUNC2(bufHdr)));

	/*
	 * This routine might get called many times on the same page, if we are
	 * making the first scan after commit of an xact that added/deleted many
	 * tuples. So, be as quick as we can if the buffer is already dirty.  We
	 * do this by not acquiring spinlock if it looks like the status bits are
	 * already set.  Since we make this test unlocked, there's a chance we
	 * might fail to notice that the flags have just been cleared, and failed
	 * to reset them, due to memory-ordering issues.  But since this function
	 * is only intended to be used in cases where failing to write out the
	 * data would be harmless anyway, it doesn't really matter.
	 */
	if ((FUNC18(&bufHdr->state) & (BM_DIRTY | BM_JUST_DIRTIED)) !=
		(BM_DIRTY | BM_JUST_DIRTIED))
	{
		XLogRecPtr	lsn = InvalidXLogRecPtr;
		bool		dirtied = false;
		bool		delayChkpt = false;
		uint32		buf_state;

		/*
		 * If we need to protect hint bit updates from torn writes, WAL-log a
		 * full page image of the page. This full page image is only necessary
		 * if the hint bit update is the first change to the page since the
		 * last checkpoint.
		 *
		 * We don't check full_page_writes here because that logic is included
		 * when we call XLogInsert() since the value changes dynamically.
		 */
		if (FUNC14() &&
			(FUNC18(&bufHdr->state) & BM_PERMANENT))
		{
			/*
			 * If we're in recovery we cannot dirty a page because of a hint.
			 * We can set the hint, just not dirty the page as a result so the
			 * hint is lost when we evict the page or shutdown.
			 *
			 * See src/backend/storage/page/README for longer discussion.
			 */
			if (FUNC12())
				return;

			/*
			 * If the block is already dirty because we either made a change
			 * or set a hint already, then we don't need to write a full page
			 * image.  Note that aggressive cleaning of blocks dirtied by hint
			 * bit setting would increase the call rate. Bulk setting of hint
			 * bits would reduce the call rate...
			 *
			 * We must issue the WAL record before we mark the buffer dirty.
			 * Otherwise we might write the page before we write the WAL. That
			 * causes a race condition, since a checkpoint might occur between
			 * writing the WAL record and marking the buffer dirty. We solve
			 * that with a kluge, but one that is already in use during
			 * transaction commit to prevent race conditions. Basically, we
			 * simply prevent the checkpoint WAL record from being written
			 * until we have marked the buffer dirty. We don't start the
			 * checkpoint flush until we have marked dirty, so our checkpoint
			 * must flush the change to disk successfully or the checkpoint
			 * never gets written, so crash recovery will fix.
			 *
			 * It's possible we may enter here without an xid, so it is
			 * essential that CreateCheckpoint waits for virtual transactions
			 * rather than full transactionids.
			 */
			MyPgXact->delayChkpt = delayChkpt = true;
			lsn = FUNC16(buffer, buffer_std);
		}

		buf_state = FUNC9(bufHdr);

		FUNC0(FUNC1(buf_state) > 0);

		if (!(buf_state & BM_DIRTY))
		{
			dirtied = true;		/* Means "will be dirtied by this action" */

			/*
			 * Set the page LSN if we wrote a backup block. We aren't supposed
			 * to set this when only holding a share lock but as long as we
			 * serialise it somehow we're OK. We choose to set LSN while
			 * holding the buffer header lock, which causes any reader of an
			 * LSN who holds only a share lock to also obtain a buffer header
			 * lock before using PageGetLSN(), which is enforced in
			 * BufferGetLSNAtomic().
			 *
			 * If checksums are enabled, you might think we should reset the
			 * checksum here. That will happen when the page is written
			 * sometime later in this checkpoint cycle.
			 */
			if (!FUNC15(lsn))
				FUNC11(page, lsn);
		}

		buf_state |= BM_DIRTY | BM_JUST_DIRTIED;
		FUNC13(bufHdr, buf_state);

		if (delayChkpt)
			MyPgXact->delayChkpt = false;

		if (dirtied)
		{
			VacuumPageDirty++;
			pgBufferUsage.shared_blks_dirtied++;
			if (VacuumCostActive)
				VacuumCostBalance += VacuumCostPageDirty;
		}
	}
}