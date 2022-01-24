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
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  QueuePosition ;
typedef  scalar_t__ BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AsyncQueueLock ; 
 int /*<<< orphan*/  DEBUG3 ; 
 scalar_t__ InvalidPid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MaxBackends ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  PROCSIG_NOTIFY_INTERRUPT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ QUEUE_CLEANUP_DELAY ; 
 scalar_t__ QUEUE_FIRST_LISTENER ; 
 int /*<<< orphan*/  QUEUE_HEAD ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	int32	   *pids;
	BackendId  *ids;
	int			count;

	/*
	 * Identify backends that we need to signal.  We don't want to send
	 * signals while holding the AsyncQueueLock, so this loop just builds a
	 * list of target PIDs.
	 *
	 * XXX in principle these pallocs could fail, which would be bad. Maybe
	 * preallocate the arrays?	But in practice this is only run in trivial
	 * transactions, so there should surely be space available.
	 */
	pids = (int32 *) FUNC12(MaxBackends * sizeof(int32));
	ids = (BackendId *) FUNC12(MaxBackends * sizeof(BackendId));
	count = 0;

	FUNC1(AsyncQueueLock, LW_EXCLUSIVE);
	for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = FUNC6(i))
	{
		int32		pid = FUNC4(i);
		QueuePosition pos;

		FUNC0(pid != InvalidPid);
		if (pid == MyProcPid)
			continue;			/* never signal self */
		pos = FUNC5(i);
		if (FUNC3(i) == MyDatabaseId)
		{
			/*
			 * Always signal listeners in our own database, unless they're
			 * already caught up (unlikely, but possible).
			 */
			if (FUNC7(pos, QUEUE_HEAD))
				continue;
		}
		else
		{
			/*
			 * Listeners in other databases should be signaled only if they
			 * are far behind.
			 */
			if (FUNC10(FUNC8(QUEUE_HEAD),
								   FUNC8(pos)) < QUEUE_CLEANUP_DELAY)
				continue;
		}
		/* OK, need to signal this one */
		pids[count] = pid;
		ids[count] = i;
		count++;
	}
	FUNC2(AsyncQueueLock);

	/* Now send signals */
	for (int i = 0; i < count; i++)
	{
		int32		pid = pids[i];

		/*
		 * Note: assuming things aren't broken, a signal failure here could
		 * only occur if the target backend exited since we released
		 * AsyncQueueLock; which is unlikely but certainly possible. So we
		 * just log a low-level debug message if it happens.
		 */
		if (FUNC9(pid, PROCSIG_NOTIFY_INTERRUPT, ids[i]) < 0)
			FUNC11(DEBUG3, "could not signal backend with PID %d: %m", pid);
	}

	FUNC13(pids);
	FUNC13(ids);
}