#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pe ;
struct TYPE_11__ {int dwSize; int th32ProcessID; int th32ParentProcessID; int /*<<< orphan*/  szExeFile; } ;
struct TYPE_10__ {TYPE_2__* user; } ;
struct TYPE_8__ {int /*<<< orphan*/ * hProcess; } ;
struct TYPE_9__ {TYPE_1__ pi; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_2__ RIOW32Dbg ;
typedef  int /*<<< orphan*/  RDebugPid ;
typedef  TYPE_3__ RDebug ;
typedef  TYPE_4__ PROCESSENTRY32 ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  TH32CS_SNAPPROCESS ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

RList *FUNC8(RDebug *dbg, int pid, RList *list) {
	HANDLE sh = FUNC7 (TH32CS_SNAPPROCESS, pid);
	if (sh == INVALID_HANDLE_VALUE) {
		FUNC6 ("w32_pid_list/CreateToolhelp32Snapshot");
		return list;
	}
	PROCESSENTRY32 pe;
	pe.dwSize = sizeof (pe);
	if (FUNC1 (sh, &pe)) {
		RIOW32Dbg *rio = dbg->user;
		bool all = pid == 0, b = false;
		do {
			if (all || pe.th32ProcessID == pid || (b = pe.th32ParentProcessID == pid)) {
				// Returns NULL if process is inaccessible unless if its a child process of debugged process
				RDebugPid *dbg_pid = FUNC3 (pe.th32ProcessID, b ? rio->pi.hProcess : NULL, pe.szExeFile);
				if (dbg_pid) {
					FUNC5 (list, dbg_pid);
				}
#if 0
				else {
					eprintf ("w32_pid_list: failed to process pid %d\n", pe.th32ProcessID);
				}
#endif
			}
		} while (FUNC2 (sh, &pe));
	} else {
		FUNC6 ("w32_pid_list/Process32First");
	}
	FUNC0 (sh);
	return list;
}