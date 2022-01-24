#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_5__ {int /*<<< orphan*/  bgw_notify_pid; int /*<<< orphan*/  bgw_type; int /*<<< orphan*/  bgw_name; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_start_time; int /*<<< orphan*/  bgw_flags; } ;
typedef  scalar_t__ BgwHandleStatus ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 scalar_t__ BGWH_STARTED ; 
 int /*<<< orphan*/  BGWORKER_SHMEM_ACCESS ; 
 int /*<<< orphan*/  BgWorkerStart_ConsistentState ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ process_shared_preload_libraries_in_progress ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	BackgroundWorker worker;
	BackgroundWorkerHandle *handle;
	BgwHandleStatus status;
	pid_t		pid;

	FUNC0(&worker, 0, sizeof(BackgroundWorker));
	worker.bgw_flags = BGWORKER_SHMEM_ACCESS;
	worker.bgw_start_time = BgWorkerStart_ConsistentState;
	FUNC8(worker.bgw_library_name, "pg_prewarm");
	FUNC8(worker.bgw_function_name, "autoprewarm_main");
	FUNC8(worker.bgw_name, "autoprewarm master");
	FUNC8(worker.bgw_type, "autoprewarm master");

	if (process_shared_preload_libraries_in_progress)
	{
		FUNC1(&worker);
		return;
	}

	/* must set notify PID to wait for startup */
	worker.bgw_notify_pid = MyProcPid;

	if (!FUNC2(&worker, &handle))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC7("could not register background process"),
				 FUNC6("You may need to increase max_worker_processes.")));

	status = FUNC3(handle, &pid);
	if (status != BGWH_STARTED)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC7("could not start background process"),
				 FUNC6("More details may be available in the server log.")));
}