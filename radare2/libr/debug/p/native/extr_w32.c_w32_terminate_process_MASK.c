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
typedef  int /*<<< orphan*/  RDebug ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int PROCESS_TERMINATE ; 
 int SYNCHRONIZE ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 

bool FUNC7(RDebug *dbg, int pid) {
	HANDLE h_proc = FUNC6(PROCESS_TERMINATE | SYNCHRONIZE , FALSE, pid);
	bool ret = false;
	if (!h_proc) {
		FUNC4 ("w32_terminate_process/OpenProcess");
		goto err_w32_terminate_process;
	}
	/* stop debugging if we are still attached */
	if (&w32_DebugActiveProcessStop) {
		FUNC5 (pid); //DebugActiveProcessStop (pid);
	}
	if (FUNC1 (h_proc, 1) == 0) {
		FUNC4 ("e32_terminate_process/TerminateProcess");
		goto err_w32_terminate_process;

	}
	/* wait up to one second to give the process some time to exit */
	DWORD ret_wait = FUNC2 (h_proc, 1000);
	if (ret_wait == WAIT_FAILED) {
		FUNC4 ("w32_terminate_process/WaitForSingleObject");
		goto err_w32_terminate_process;
	}
	if (ret_wait == WAIT_TIMEOUT) {
		FUNC3 ("(%d) Waiting for process to terminate timed out.\n", pid);
		goto err_w32_terminate_process;
	}
	ret = true;
err_w32_terminate_process:
	if (h_proc) {
		FUNC0 (h_proc);
	}
	return ret;
}