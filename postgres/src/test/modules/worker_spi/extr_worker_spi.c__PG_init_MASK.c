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
typedef  int /*<<< orphan*/  worker ;
struct TYPE_4__ {int bgw_flags; int /*<<< orphan*/  bgw_main_arg; int /*<<< orphan*/  bgw_type; int /*<<< orphan*/  bgw_name; scalar_t__ bgw_notify_pid; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_restart_time; int /*<<< orphan*/  bgw_start_time; } ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int BGWORKER_BACKEND_DATABASE_CONNECTION ; 
 int BGWORKER_SHMEM_ACCESS ; 
 int /*<<< orphan*/  BGW_MAXLEN ; 
 int /*<<< orphan*/  BGW_NEVER_RESTART ; 
 int /*<<< orphan*/  BgWorkerStart_RecoveryFinished ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *,unsigned int*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  process_shared_preload_libraries_in_progress ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  worker_spi_database ; 
 unsigned int worker_spi_naptime ; 
 unsigned int worker_spi_total_workers ; 

void
FUNC7(void)
{
	BackgroundWorker worker;
	unsigned int i;

	/* get the configuration */
	FUNC0("worker_spi.naptime",
							"Duration between each check (in seconds).",
							NULL,
							&worker_spi_naptime,
							10,
							1,
							INT_MAX,
							PGC_SIGHUP,
							0,
							NULL,
							NULL,
							NULL);

	if (!process_shared_preload_libraries_in_progress)
		return;

	FUNC0("worker_spi.total_workers",
							"Number of workers.",
							NULL,
							&worker_spi_total_workers,
							2,
							1,
							100,
							PGC_POSTMASTER,
							0,
							NULL,
							NULL,
							NULL);

	FUNC1("worker_spi.database",
							   "Database to connect to.",
							   NULL,
							   &worker_spi_database,
							   "postgres",
							   PGC_POSTMASTER,
							   0,
							   NULL, NULL, NULL);

	/* set up common data for all our workers */
	FUNC4(&worker, 0, sizeof(worker));
	worker.bgw_flags = BGWORKER_SHMEM_ACCESS |
		BGWORKER_BACKEND_DATABASE_CONNECTION;
	worker.bgw_start_time = BgWorkerStart_RecoveryFinished;
	worker.bgw_restart_time = BGW_NEVER_RESTART;
	FUNC6(worker.bgw_library_name, "worker_spi");
	FUNC6(worker.bgw_function_name, "worker_spi_main");
	worker.bgw_notify_pid = 0;

	/*
	 * Now fill in worker-specific data, and do the actual registrations.
	 */
	for (i = 1; i <= worker_spi_total_workers; i++)
	{
		FUNC5(worker.bgw_name, BGW_MAXLEN, "worker_spi worker %d", i);
		FUNC5(worker.bgw_type, BGW_MAXLEN, "worker_spi");
		worker.bgw_main_arg = FUNC2(i);

		FUNC3(&worker);
	}
}