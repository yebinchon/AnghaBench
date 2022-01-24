#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_6__ {scalar_t__ minRecoveryPoint; int /*<<< orphan*/  minRecoveryPointTLI; } ;
struct TYPE_5__ {scalar_t__ Flush; } ;
struct TYPE_4__ {int /*<<< orphan*/  info_lck; TYPE_2__ LogwrtResult; } ;

/* Variables and functions */
 TYPE_3__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 scalar_t__ InRecovery ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_2__ LogwrtResult ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* XLogCtl ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ minRecoveryPoint ; 
 int /*<<< orphan*/  minRecoveryPointTLI ; 
 int updateMinRecoveryPoint ; 

bool
FUNC6(XLogRecPtr record)
{
	/*
	 * During recovery, we don't flush WAL but update minRecoveryPoint
	 * instead. So "needs flush" is taken to mean whether minRecoveryPoint
	 * would need to be updated.
	 */
	if (FUNC2())
	{
		/*
		 * An invalid minRecoveryPoint means that we need to recover all the
		 * WAL, i.e., we're doing crash recovery.  We never modify the control
		 * file's value in that case, so we can short-circuit future checks
		 * here too.  This triggers a quick exit path for the startup process,
		 * which cannot update its local copy of minRecoveryPoint as long as
		 * it has not replayed all WAL available when doing crash recovery.
		 */
		if (FUNC5(minRecoveryPoint) && InRecovery)
			updateMinRecoveryPoint = false;

		/* Quick exit if already known to be updated or cannot be updated */
		if (record <= minRecoveryPoint || !updateMinRecoveryPoint)
			return false;

		/*
		 * Update local copy of minRecoveryPoint. But if the lock is busy,
		 * just return a conservative guess.
		 */
		if (!FUNC0(ControlFileLock, LW_SHARED))
			return true;
		minRecoveryPoint = ControlFile->minRecoveryPoint;
		minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;
		FUNC1(ControlFileLock);

		/*
		 * Check minRecoveryPoint for any other process than the startup
		 * process doing crash recovery, which should not update the control
		 * file value if crash recovery is still running.
		 */
		if (FUNC5(minRecoveryPoint))
			updateMinRecoveryPoint = false;

		/* check again */
		if (record <= minRecoveryPoint || !updateMinRecoveryPoint)
			return false;
		else
			return true;
	}

	/* Quick exit if already known flushed */
	if (record <= LogwrtResult.Flush)
		return false;

	/* read LogwrtResult and update local state */
	FUNC3(&XLogCtl->info_lck);
	LogwrtResult = XLogCtl->LogwrtResult;
	FUNC4(&XLogCtl->info_lck);

	/* check again */
	if (record <= LogwrtResult.Flush)
		return false;

	return true;
}