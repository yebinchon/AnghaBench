#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bgw_flags; int /*<<< orphan*/  bgw_notify_pid; int /*<<< orphan*/  bgw_type; int /*<<< orphan*/  bgw_name; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_restart_time; int /*<<< orphan*/  bgw_start_time; } ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int BGWORKER_BACKEND_DATABASE_CONNECTION ; 
 int BGWORKER_SHMEM_ACCESS ; 
 int /*<<< orphan*/  BGW_NEVER_RESTART ; 
 int /*<<< orphan*/  BgWorkerStart_ConsistentState ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	BackgroundWorker worker;
	BackgroundWorkerHandle *handle;

	FUNC0(&worker, 0, sizeof(BackgroundWorker));
	worker.bgw_flags =
		BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;
	worker.bgw_start_time = BgWorkerStart_ConsistentState;
	worker.bgw_restart_time = BGW_NEVER_RESTART;
	FUNC7(worker.bgw_library_name, "pg_prewarm");
	FUNC7(worker.bgw_function_name, "autoprewarm_database_main");
	FUNC7(worker.bgw_name, "autoprewarm worker");
	FUNC7(worker.bgw_type, "autoprewarm worker");

	/* must set notify PID to wait for shutdown */
	worker.bgw_notify_pid = MyProcPid;

	if (!FUNC1(&worker, &handle))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC6("registering dynamic bgworker autoprewarm failed"),
				 FUNC5("Consider increasing configuration parameter \"max_worker_processes\".")));

	/*
	 * Ignore return value; if it fails, postmaster has died, but we have
	 * checks for that elsewhere.
	 */
	FUNC2(handle);
}