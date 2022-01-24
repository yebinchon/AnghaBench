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
struct TYPE_5__ {int dwSize; int th32ProcessID; int th32ParentProcessID; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RDebugPid ;
typedef  TYPE_1__ PROCESSENTRY32 ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  TH32CS_SNAPPROCESS ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

RList *FUNC7(int pid, RList *list) {
	HANDLE process_snapshot;
	PROCESSENTRY32 pe;
	pe.dwSize = sizeof (PROCESSENTRY32);
	bool show_all_pids = pid == 0;

	process_snapshot = FUNC1 (TH32CS_SNAPPROCESS, pid);
	if (process_snapshot == INVALID_HANDLE_VALUE) {
		FUNC6 ("w32_pids/CreateToolhelp32Snapshot");
		return list;
	}
	if (!FUNC2 (process_snapshot, &pe)) {
		FUNC6 ("w32_pids/Process32First");
		FUNC0 (process_snapshot);
		return list;
	}
	do {
		if (show_all_pids ||
			pe.th32ProcessID == pid ||
			pe.th32ParentProcessID == pid) {

			RDebugPid *debug_pid = FUNC4 (&pe);
			if (debug_pid) {
				FUNC5 (list, debug_pid);
			}
		}
	} while (FUNC3 (process_snapshot, &pe));

	FUNC0 (process_snapshot);
	return list;
}