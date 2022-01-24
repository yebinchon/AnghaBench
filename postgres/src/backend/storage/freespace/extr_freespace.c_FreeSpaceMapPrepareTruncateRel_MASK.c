#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
struct TYPE_6__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 int /*<<< orphan*/  InRecovery ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BlockNumber
FUNC17(Relation rel, BlockNumber nblocks)
{
	BlockNumber new_nfsmblocks;
	FSMAddress	first_removed_address;
	uint16		first_removed_slot;
	Buffer		buf;

	FUNC6(rel);

	/*
	 * If no FSM has been created yet for this relation, there's nothing to
	 * truncate.
	 */
	if (!FUNC15(rel->rd_smgr, FSM_FORKNUM))
		return InvalidBlockNumber;

	/* Get the location in the FSM of the first removed heap block */
	first_removed_address = FUNC10(nblocks, &first_removed_slot);

	/*
	 * Zero out the tail of the last remaining FSM page. If the slot
	 * representing the first removed heap block is at a page boundary, as the
	 * first slot on the FSM page that first_removed_address points to, we can
	 * just truncate that page altogether.
	 */
	if (first_removed_slot > 0)
	{
		buf = FUNC12(rel, first_removed_address, false);
		if (!FUNC1(buf))
			return InvalidBlockNumber;	/* nothing to do; the FSM was already smaller */
		FUNC3(buf, BUFFER_LOCK_EXCLUSIVE);

		/* NO EREPORT(ERROR) from here till changes are logged */
		FUNC7();

		FUNC13(FUNC0(buf), first_removed_slot);

		/*
		 * Truncation of a relation is WAL-logged at a higher-level, and we
		 * will be called at WAL replay. But if checksums are enabled, we need
		 * to still write a WAL record to protect against a torn page, if the
		 * page is flushed to disk before the truncation WAL record. We cannot
		 * use MarkBufferDirtyHint here, because that will not dirty the page
		 * during recovery.
		 */
		FUNC4(buf);
		if (!InRecovery && FUNC5(rel) && FUNC9())
			FUNC14(buf, false);

		FUNC2();

		FUNC8(buf);

		new_nfsmblocks = FUNC11(first_removed_address) + 1;
	}
	else
	{
		new_nfsmblocks = FUNC11(first_removed_address);
		if (FUNC16(rel->rd_smgr, FSM_FORKNUM) <= new_nfsmblocks)
			return InvalidBlockNumber;	/* nothing to do; the FSM was already smaller */
	}

	return new_nfsmblocks;
}