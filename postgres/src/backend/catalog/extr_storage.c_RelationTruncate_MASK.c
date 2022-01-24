#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xlrec ;
struct TYPE_11__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  rnode; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_1__ xl_smgr_truncate ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {void* smgr_vm_nblocks; void* smgr_fsm_nblocks; void* smgr_targblock; } ;
struct TYPE_12__ {TYPE_4__* rd_smgr; int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 void* InvalidBlockNumber ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int MAX_FORKNUM ; 
 int /*<<< orphan*/  RM_SMGR_ID ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  SMGR_TRUNCATE_ALL ; 
 int /*<<< orphan*/  VISIBILITYMAP_FORKNUM ; 
 int XLOG_SMGR_TRUNCATE ; 
 int XLR_SPECIAL_REL_UPDATE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC12(Relation rel, BlockNumber nblocks)
{
	bool		fsm;
	bool		vm;
	bool		need_fsm_vacuum = false;
	ForkNumber	forks[MAX_FORKNUM];
	BlockNumber	blocks[MAX_FORKNUM];
	int		nforks = 0;

	/* Open it at the smgr level if not already done */
	FUNC4(rel);

	/*
	 * Make sure smgr_targblock etc aren't pointing somewhere past new end
	 */
	rel->rd_smgr->smgr_targblock = InvalidBlockNumber;
	rel->rd_smgr->smgr_fsm_nblocks = InvalidBlockNumber;
	rel->rd_smgr->smgr_vm_nblocks = InvalidBlockNumber;

	/* Prepare for truncation of MAIN fork of the relation */
	forks[nforks] = MAIN_FORKNUM;
	blocks[nforks] = nblocks;
	nforks++;

	/*  Prepare for truncation of the FSM if it exists */
	fsm = FUNC9(rel->rd_smgr, FSM_FORKNUM);
	if (fsm)
	{
		blocks[nforks] = FUNC1(rel, nblocks);
		if (FUNC0(blocks[nforks]))
		{
			forks[nforks] = FSM_FORKNUM;
			nforks++;
			need_fsm_vacuum = true;
		}
	}

	/* Prepare for truncation of the visibility map too if it exists */
	vm = FUNC9(rel->rd_smgr, VISIBILITYMAP_FORKNUM);
	if (vm)
	{
		blocks[nforks] = FUNC11(rel, nblocks);
		if (FUNC0(blocks[nforks]))
		{
			forks[nforks] = VISIBILITYMAP_FORKNUM;
			nforks++;
		}
	}

	/*
	 * We WAL-log the truncation before actually truncating, which means
	 * trouble if the truncation fails. If we then crash, the WAL replay
	 * likely isn't going to succeed in the truncation either, and cause a
	 * PANIC. It's tempting to put a critical section here, but that cure
	 * would be worse than the disease. It would turn a usually harmless
	 * failure to truncate, that might spell trouble at WAL replay, into a
	 * certain PANIC.
	 */
	if (FUNC3(rel))
	{
		/*
		 * Make an XLOG entry reporting the file truncation.
		 */
		XLogRecPtr	lsn;
		xl_smgr_truncate xlrec;

		xlrec.blkno = nblocks;
		xlrec.rnode = rel->rd_node;
		xlrec.flags = SMGR_TRUNCATE_ALL;

		FUNC5();
		FUNC8((char *) &xlrec, sizeof(xlrec));

		lsn = FUNC7(RM_SMGR_ID,
						 XLOG_SMGR_TRUNCATE | XLR_SPECIAL_REL_UPDATE);

		/*
		 * Flush, because otherwise the truncation of the main relation might
		 * hit the disk before the WAL record, and the truncation of the FSM
		 * or visibility map. If we crashed during that window, we'd be left
		 * with a truncated heap, but the FSM or visibility map would still
		 * contain entries for the non-existent heap pages.
		 */
		if (fsm || vm)
			FUNC6(lsn);
	}

	/* Do the real work to truncate relation forks */
	FUNC10(rel->rd_smgr, forks, nforks, blocks);

	/*
	 * Update upper-level FSM pages to account for the truncation.
	 * This is important because the just-truncated pages were likely
	 * marked as all-free, and would be preferentially selected.
	 */
	if (need_fsm_vacuum)
		FUNC2(rel, nblocks, InvalidBlockNumber);
}