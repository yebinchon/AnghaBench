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
typedef  int /*<<< orphan*/  bgw ;
struct TYPE_4__ {int bgw_flags; int bgw_restart_time; scalar_t__ bgw_main_arg; scalar_t__ bgw_notify_pid; int /*<<< orphan*/  bgw_type; int /*<<< orphan*/  bgw_name; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_start_time; } ;
typedef  scalar_t__ Datum ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int BGWORKER_BACKEND_DATABASE_CONNECTION ; 
 int BGWORKER_SHMEM_ACCESS ; 
 int /*<<< orphan*/  BGW_MAXLEN ; 
 int /*<<< orphan*/  BgWorkerStart_RecoveryFinished ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ max_logical_replication_workers ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC3(void)
{
	BackgroundWorker bgw;

	if (max_logical_replication_workers == 0)
		return;

	FUNC1(&bgw, 0, sizeof(bgw));
	bgw.bgw_flags = BGWORKER_SHMEM_ACCESS |
		BGWORKER_BACKEND_DATABASE_CONNECTION;
	bgw.bgw_start_time = BgWorkerStart_RecoveryFinished;
	FUNC2(bgw.bgw_library_name, BGW_MAXLEN, "postgres");
	FUNC2(bgw.bgw_function_name, BGW_MAXLEN, "ApplyLauncherMain");
	FUNC2(bgw.bgw_name, BGW_MAXLEN,
			 "logical replication launcher");
	FUNC2(bgw.bgw_type, BGW_MAXLEN,
			 "logical replication launcher");
	bgw.bgw_restart_time = 5;
	bgw.bgw_notify_pid = 0;
	bgw.bgw_main_arg = (Datum) 0;

	FUNC0(&bgw);
}