#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int XLogRecPtr ;
typedef  void* TimeLineID ;
struct TYPE_4__ {int minRecoveryPoint; void* minRecoveryPointTLI; } ;
struct TYPE_3__ {int replayEndRecPtr; int /*<<< orphan*/  info_lck; void* replayEndTLI; } ;

/* Variables and functions */
 TYPE_2__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ InRecovery ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_1__* XLogCtl ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int minRecoveryPoint ; 
 void* minRecoveryPointTLI ; 
 int updateMinRecoveryPoint ; 

__attribute__((used)) static void
FUNC9(XLogRecPtr lsn, bool force)
{
	/* Quick check using our local copy of the variable */
	if (!updateMinRecoveryPoint || (!force && lsn <= minRecoveryPoint))
		return;

	/*
	 * An invalid minRecoveryPoint means that we need to recover all the WAL,
	 * i.e., we're doing crash recovery.  We never modify the control file's
	 * value in that case, so we can short-circuit future checks here too. The
	 * local values of minRecoveryPoint and minRecoveryPointTLI should not be
	 * updated until crash recovery finishes.  We only do this for the startup
	 * process as it should not update its own reference of minRecoveryPoint
	 * until it has finished crash recovery to make sure that all WAL
	 * available is replayed in this case.  This also saves from extra locks
	 * taken on the control file from the startup process.
	 */
	if (FUNC5(minRecoveryPoint) && InRecovery)
	{
		updateMinRecoveryPoint = false;
		return;
	}

	FUNC0(ControlFileLock, LW_EXCLUSIVE);

	/* update local copy */
	minRecoveryPoint = ControlFile->minRecoveryPoint;
	minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;

	if (FUNC5(minRecoveryPoint))
		updateMinRecoveryPoint = false;
	else if (force || minRecoveryPoint < lsn)
	{
		XLogRecPtr	newMinRecoveryPoint;
		TimeLineID	newMinRecoveryPointTLI;

		/*
		 * To avoid having to update the control file too often, we update it
		 * all the way to the last record being replayed, even though 'lsn'
		 * would suffice for correctness.  This also allows the 'force' case
		 * to not need a valid 'lsn' value.
		 *
		 * Another important reason for doing it this way is that the passed
		 * 'lsn' value could be bogus, i.e., past the end of available WAL, if
		 * the caller got it from a corrupted heap page.  Accepting such a
		 * value as the min recovery point would prevent us from coming up at
		 * all.  Instead, we just log a warning and continue with recovery.
		 * (See also the comments about corrupt LSNs in XLogFlush.)
		 */
		FUNC2(&XLogCtl->info_lck);
		newMinRecoveryPoint = XLogCtl->replayEndRecPtr;
		newMinRecoveryPointTLI = XLogCtl->replayEndTLI;
		FUNC3(&XLogCtl->info_lck);

		if (!force && newMinRecoveryPoint < lsn)
			FUNC6(WARNING,
				 "xlog min recovery request %X/%X is past current point %X/%X",
				 (uint32) (lsn >> 32), (uint32) lsn,
				 (uint32) (newMinRecoveryPoint >> 32),
				 (uint32) newMinRecoveryPoint);

		/* update control file */
		if (ControlFile->minRecoveryPoint < newMinRecoveryPoint)
		{
			ControlFile->minRecoveryPoint = newMinRecoveryPoint;
			ControlFile->minRecoveryPointTLI = newMinRecoveryPointTLI;
			FUNC4();
			minRecoveryPoint = newMinRecoveryPoint;
			minRecoveryPointTLI = newMinRecoveryPointTLI;

			FUNC7(DEBUG2,
					(FUNC8("updated min recovery point to %X/%X on timeline %u",
							(uint32) (minRecoveryPoint >> 32),
							(uint32) minRecoveryPoint,
							newMinRecoveryPointTLI)));
		}
	}
	FUNC1(ControlFileLock);
}