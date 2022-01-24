#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lpThreadEntryPoint; void* lpStartAddress; void* lpThreadLocalBase; int /*<<< orphan*/  hThread; int /*<<< orphan*/  bFinished; void* tid; void* pid; } ;
typedef  int /*<<< orphan*/  THREAD_ITEM ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PTHREAD_ITEM ;
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  void* DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int PTHREAD_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ lstThread ; 
 TYPE_1__* lstThreadPtr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (DWORD pid, DWORD tid, HANDLE hThread, LPVOID  lpThreadLocalBase, LPVOID lpStartAddress, BOOL bFinished) {
	int x;
	PVOID startAddress = 0;
	if (lstThread == 0)
		lstThread = FUNC0 (0, PTHREAD_MAX * sizeof (THREAD_ITEM), MEM_COMMIT, PAGE_READWRITE);
	lstThreadPtr = (PTHREAD_ITEM)lstThread;
	for (x = 0; x < PTHREAD_MAX; x++) {
		if (!lstThreadPtr->tid) {
			lstThreadPtr->pid = pid;
			lstThreadPtr->tid = tid;
			lstThreadPtr->bFinished = bFinished;
			lstThreadPtr->hThread = hThread;
			lstThreadPtr->lpThreadLocalBase = lpThreadLocalBase;
			lstThreadPtr->lpStartAddress = lpStartAddress;
			if (FUNC2 (hThread, 0x9 /*ThreadQuerySetWin32StartAddress*/, &startAddress, sizeof (PVOID), NULL) == 0) {
				lstThreadPtr->lpThreadEntryPoint = startAddress;
			}
			return;
		}
		lstThreadPtr++;
	}
	FUNC1 ("r_debug_lstThreadAdd: Cannot find slot\n");
}