#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ smgr_fsm_nblocks; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_3__* rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ PGAlignedBlock ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Relation rel, BlockNumber fsm_nblocks)
{
	BlockNumber fsm_nblocks_now;
	PGAlignedBlock pg;

	FUNC1((Page) pg.data, BLCKSZ, 0);

	/*
	 * We use the relation extension lock to lock out other backends trying to
	 * extend the FSM at the same time. It also locks out extension of the
	 * main fork, unnecessarily, but extending the FSM happens seldom enough
	 * that it doesn't seem worthwhile to have a separate lock tag type for
	 * it.
	 *
	 * Note that another backend might have extended or created the relation
	 * by the time we get the lock.
	 */
	FUNC0(rel, ExclusiveLock);

	/* Might have to re-open if a cache flush happened */
	FUNC3(rel);

	/*
	 * Create the FSM file first if it doesn't exist.  If smgr_fsm_nblocks is
	 * positive then it must exist, no need for an smgrexists call.
	 */
	if ((rel->rd_smgr->smgr_fsm_nblocks == 0 ||
		 rel->rd_smgr->smgr_fsm_nblocks == InvalidBlockNumber) &&
		!FUNC6(rel->rd_smgr, FSM_FORKNUM))
		FUNC5(rel->rd_smgr, FSM_FORKNUM, false);

	fsm_nblocks_now = FUNC8(rel->rd_smgr, FSM_FORKNUM);

	while (fsm_nblocks_now < fsm_nblocks)
	{
		FUNC2((Page) pg.data, fsm_nblocks_now);

		FUNC7(rel->rd_smgr, FSM_FORKNUM, fsm_nblocks_now,
				   pg.data, false);
		fsm_nblocks_now++;
	}

	/* Update local cache with the up-to-date size */
	rel->rd_smgr->smgr_fsm_nblocks = fsm_nblocks_now;

	FUNC4(rel, ExclusiveLock);
}