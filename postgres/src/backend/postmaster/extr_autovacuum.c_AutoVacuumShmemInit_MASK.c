#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* WorkerInfo ;
struct TYPE_5__ {int /*<<< orphan*/  av_freeWorkers; int /*<<< orphan*/  av_workItems; int /*<<< orphan*/ * av_startingWorker; int /*<<< orphan*/  av_runningWorkers; scalar_t__ av_launcherpid; } ;
struct TYPE_4__ {int /*<<< orphan*/  wi_links; } ;
typedef  int /*<<< orphan*/  AutoVacuumWorkItem ;
typedef  TYPE_2__ AutoVacuumShmemStruct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* AutoVacuumShmem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int FUNC2 (int) ; 
 int NUM_WORKITEMS ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int*) ; 
 int autovacuum_max_workers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC7(void)
{
	bool		found;

	AutoVacuumShmem = (AutoVacuumShmemStruct *)
		FUNC3("AutoVacuum Data",
						FUNC1(),
						&found);

	if (!IsUnderPostmaster)
	{
		WorkerInfo	worker;
		int			i;

		FUNC0(!found);

		AutoVacuumShmem->av_launcherpid = 0;
		FUNC4(&AutoVacuumShmem->av_freeWorkers);
		FUNC4(&AutoVacuumShmem->av_runningWorkers);
		AutoVacuumShmem->av_startingWorker = NULL;
		FUNC6(AutoVacuumShmem->av_workItems, 0,
			   sizeof(AutoVacuumWorkItem) * NUM_WORKITEMS);

		worker = (WorkerInfo) ((char *) AutoVacuumShmem +
							   FUNC2(sizeof(AutoVacuumShmemStruct)));

		/* initialize the WorkerInfo free list */
		for (i = 0; i < autovacuum_max_workers; i++)
			FUNC5(&AutoVacuumShmem->av_freeWorkers,
							&worker[i].wi_links);
	}
	else
		FUNC0(found);
}