#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCSIG_RECOVERY_CONFLICT_DATABASE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(Oid dbid)
{
	/*
	 * We don't do ResolveRecoveryConflictWithVirtualXIDs() here since that
	 * only waits for transactions and completely idle sessions would block
	 * us. This is rare enough that we do this as simply as possible: no wait,
	 * just force them off immediately.
	 *
	 * No locking is required here because we already acquired
	 * AccessExclusiveLock. Anybody trying to connect while we do this will
	 * block during InitPostgres() and then disconnect when they see the
	 * database has been removed.
	 */
	while (FUNC1(dbid) > 0)
	{
		FUNC0(dbid, PROCSIG_RECOVERY_CONFLICT_DATABASE, true);

		/*
		 * Wait awhile for them to die so that we avoid flooding an
		 * unresponsive backend when system is heavily loaded.
		 */
		FUNC2(10000);
	}
}