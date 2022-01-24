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
struct TYPE_4__ {int dwSize; int th32OwnerProcessID; int th32ThreadID; } ;
typedef  TYPE_1__ THREADENTRY32 ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  TH32CS_SNAPTHREAD ; 
 int /*<<< orphan*/  THREAD_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(int pid) {
	HANDLE th;
	HANDLE thid;
	THREADENTRY32 te32;
	te32.dwSize = sizeof (THREADENTRY32);

	if (!&w32_OpenThread) {
		FUNC4("w32_thread_list: no w32_OpenThread?\n");
		return -1;
	}
	th = FUNC1 (TH32CS_SNAPTHREAD, pid);
	if (th == INVALID_HANDLE_VALUE) {
		FUNC4 ("w32_thread_list: invalid handle\n");
		return -1;
	}
	if (!FUNC2 (th, &te32)) {
		FUNC0 (th);
		FUNC4 ("w32_thread_list: no thread first\n");
		return -1;
	}
	do {
		/* get all threads of process */
		if (te32.th32OwnerProcessID == pid) {
			thid = FUNC6 (THREAD_ALL_ACCESS, 0, te32.th32ThreadID);
			if (!thid) {
				FUNC5 ("w32_first_thread/OpenThread");
				goto err_load_th;
			}
			FUNC0 (th);
			return te32.th32ThreadID;
		}
	} while (FUNC3 (th, &te32));
err_load_th:
	FUNC4 ("Could not find an active thread for pid %d\n", pid);
	FUNC0 (th);
	return pid;
}