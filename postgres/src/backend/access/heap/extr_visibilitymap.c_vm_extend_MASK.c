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
struct TYPE_13__ {scalar_t__ smgr_vm_nblocks; int /*<<< orphan*/  smgr_rnode; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_4__* rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ PGAlignedBlock ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITYMAP_FORKNUM ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Relation rel, BlockNumber vm_nblocks)
{
	BlockNumber vm_nblocks_now;
	PGAlignedBlock pg;

	FUNC2((Page) pg.data, BLCKSZ, 0);

	/*
	 * We use the relation extension lock to lock out other backends trying to
	 * extend the visibility map at the same time. It also locks out extension
	 * of the main fork, unnecessarily, but extending the visibility map
	 * happens seldom enough that it doesn't seem worthwhile to have a
	 * separate lock tag type for it.
	 *
	 * Note that another backend might have extended or created the relation
	 * by the time we get the lock.
	 */
	FUNC1(rel, ExclusiveLock);

	/* Might have to re-open if a cache flush happened */
	FUNC4(rel);

	/*
	 * Create the file first if it doesn't exist.  If smgr_vm_nblocks is
	 * positive then it must exist, no need for an smgrexists call.
	 */
	if ((rel->rd_smgr->smgr_vm_nblocks == 0 ||
		 rel->rd_smgr->smgr_vm_nblocks == InvalidBlockNumber) &&
		!FUNC7(rel->rd_smgr, VISIBILITYMAP_FORKNUM))
		FUNC6(rel->rd_smgr, VISIBILITYMAP_FORKNUM, false);

	vm_nblocks_now = FUNC9(rel->rd_smgr, VISIBILITYMAP_FORKNUM);

	/* Now extend the file */
	while (vm_nblocks_now < vm_nblocks)
	{
		FUNC3((Page) pg.data, vm_nblocks_now);

		FUNC8(rel->rd_smgr, VISIBILITYMAP_FORKNUM, vm_nblocks_now,
				   pg.data, false);
		vm_nblocks_now++;
	}

	/*
	 * Send a shared-inval message to force other backends to close any smgr
	 * references they may have for this rel, which we are about to change.
	 * This is a useful optimization because it means that backends don't have
	 * to keep checking for creation or extension of the file, which happens
	 * infrequently.
	 */
	FUNC0(rel->rd_smgr->smgr_rnode);

	/* Update local cache with the up-to-date size */
	rel->rd_smgr->smgr_vm_nblocks = vm_nblocks_now;

	FUNC5(rel, ExclusiveLock);
}