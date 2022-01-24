#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  backendId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_12__ {int pid; } ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 int PROC_IN_VACUUM ; 
 int PROC_IS_AUTOVACUUM ; 
 int /*<<< orphan*/  PROGRESS_WAITFOR_CURRENT_PID ; 
 int /*<<< orphan*/  PROGRESS_WAITFOR_DONE ; 
 int /*<<< orphan*/  PROGRESS_WAITFOR_TOTAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 scalar_t__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(TransactionId limitXmin, bool progress)
{
	int			n_old_snapshots;
	int			i;
	VirtualTransactionId *old_snapshots;

	old_snapshots = FUNC1(limitXmin, true, false,
										  PROC_IS_AUTOVACUUM | PROC_IN_VACUUM,
										  &n_old_snapshots);
	if (progress)
		FUNC7(PROGRESS_WAITFOR_TOTAL, n_old_snapshots);

	for (i = 0; i < n_old_snapshots; i++)
	{
		if (!FUNC4(old_snapshots[i]))
			continue;			/* found uninteresting in previous cycle */

		if (i > 0)
		{
			/* see if anything's changed ... */
			VirtualTransactionId *newer_snapshots;
			int			n_newer_snapshots;
			int			j;
			int			k;

			newer_snapshots = FUNC1(limitXmin,
													true, false,
													PROC_IS_AUTOVACUUM | PROC_IN_VACUUM,
													&n_newer_snapshots);
			for (j = i; j < n_old_snapshots; j++)
			{
				if (!FUNC4(old_snapshots[j]))
					continue;	/* found uninteresting in previous cycle */
				for (k = 0; k < n_newer_snapshots; k++)
				{
					if (FUNC3(old_snapshots[j],
												   newer_snapshots[k]))
						break;
				}
				if (k >= n_newer_snapshots) /* not there anymore */
					FUNC2(old_snapshots[j]);
			}
			FUNC6(newer_snapshots);
		}

		if (FUNC4(old_snapshots[i]))
		{
			/* If requested, publish who we're going to wait for. */
			if (progress)
			{
				PGPROC	   *holder = FUNC0(old_snapshots[i].backendId);

				if (holder)
					FUNC7(PROGRESS_WAITFOR_CURRENT_PID,
												 holder->pid);
			}
			FUNC5(old_snapshots[i], true);
		}

		if (progress)
			FUNC7(PROGRESS_WAITFOR_DONE, i + 1);
	}
}