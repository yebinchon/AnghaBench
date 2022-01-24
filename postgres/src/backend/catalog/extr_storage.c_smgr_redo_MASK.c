#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  blkno; int /*<<< orphan*/  rnode; } ;
typedef  TYPE_1__ xl_smgr_truncate ;
struct TYPE_9__ {int /*<<< orphan*/  forkNum; int /*<<< orphan*/  rnode; } ;
typedef  TYPE_2__ xl_smgr_create ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_3__ XLogReaderState ;
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int MAX_FORKNUM ; 
 int /*<<< orphan*/  PANIC ; 
 int SMGR_TRUNCATE_FSM ; 
 int SMGR_TRUNCATE_HEAP ; 
 int SMGR_TRUNCATE_VM ; 
 int /*<<< orphan*/  VISIBILITYMAP_FORKNUM ; 
 scalar_t__ XLOG_SMGR_CREATE ; 
 scalar_t__ XLOG_SMGR_TRUNCATE ; 
 scalar_t__ XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC17(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	uint8		info = FUNC8(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in smgr records */
	FUNC0(!FUNC9(record));

	if (info == XLOG_SMGR_CREATE)
	{
		xl_smgr_create *xlrec = (xl_smgr_create *) FUNC7(record);
		SMgrRelation reln;

		reln = FUNC14(xlrec->rnode, InvalidBackendId);
		FUNC12(reln, xlrec->forkNum, true);
	}
	else if (info == XLOG_SMGR_TRUNCATE)
	{
		xl_smgr_truncate *xlrec = (xl_smgr_truncate *) FUNC7(record);
		SMgrRelation reln;
		Relation	rel;
		ForkNumber	forks[MAX_FORKNUM];
		BlockNumber	blocks[MAX_FORKNUM];
		int		nforks = 0;
		bool		need_fsm_vacuum = false;

		reln = FUNC14(xlrec->rnode, InvalidBackendId);

		/*
		 * Forcibly create relation if it doesn't exist (which suggests that
		 * it was dropped somewhere later in the WAL sequence).  As in
		 * XLogReadBufferForRedo, we prefer to recreate the rel and replay the
		 * log as best we can until the drop is seen.
		 */
		FUNC12(reln, MAIN_FORKNUM, true);

		/*
		 * Before we perform the truncation, update minimum recovery point to
		 * cover this WAL record. Once the relation is truncated, there's no
		 * going back. The buffer manager enforces the WAL-first rule for
		 * normal updates to relation files, so that the minimum recovery
		 * point is always updated before the corresponding change in the data
		 * file is flushed to disk. We have to do the same manually here.
		 *
		 * Doing this before the truncation means that if the truncation fails
		 * for some reason, you cannot start up the system even after restart,
		 * until you fix the underlying situation so that the truncation will
		 * succeed. Alternatively, we could update the minimum recovery point
		 * after truncation, but that would leave a small window where the
		 * WAL-first rule could be violated.
		 */
		FUNC6(lsn);

		/* Prepare for truncation of MAIN fork */
		if ((xlrec->flags & SMGR_TRUNCATE_HEAP) != 0)
		{
			forks[nforks] = MAIN_FORKNUM;
			blocks[nforks] = xlrec->blkno;
			nforks++;

			/* Also tell xlogutils.c about it */
			FUNC10(xlrec->rnode, MAIN_FORKNUM, xlrec->blkno);
		}

		/* Prepare for truncation of FSM and VM too */
		rel = FUNC2(xlrec->rnode);

		if ((xlrec->flags & SMGR_TRUNCATE_FSM) != 0 &&
			FUNC13(reln, FSM_FORKNUM))
		{
			blocks[nforks] = FUNC4(rel, xlrec->blkno);
			if (FUNC1(blocks[nforks]))
			{
				forks[nforks] = FSM_FORKNUM;
				nforks++;
				need_fsm_vacuum = true;
			}
		}
		if ((xlrec->flags & SMGR_TRUNCATE_VM) != 0 &&
			FUNC13(reln, VISIBILITYMAP_FORKNUM))
		{
			blocks[nforks] = FUNC16(rel, xlrec->blkno);
			if (FUNC1(blocks[nforks]))
			{
				forks[nforks] = VISIBILITYMAP_FORKNUM;
				nforks++;
			}
		}

		/* Do the real work to truncate relation forks */
		if (nforks > 0)
			FUNC15(reln, forks, nforks, blocks);

		/*
		 * Update upper-level FSM pages to account for the truncation.
		 * This is important because the just-truncated pages were likely
		 * marked as all-free, and would be preferentially selected.
		 */
		if (need_fsm_vacuum)
			FUNC5(rel, xlrec->blkno,
									InvalidBlockNumber);

		FUNC3(rel);
	}
	else
		FUNC11(PANIC, "smgr_redo: unknown op code %u", info);
}