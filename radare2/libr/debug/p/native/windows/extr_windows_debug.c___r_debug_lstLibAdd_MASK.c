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
struct TYPE_3__ {scalar_t__ hFile; int /*<<< orphan*/  Name; int /*<<< orphan*/  Path; int /*<<< orphan*/  BaseOfDll; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__* PLIB_ITEM ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LIB_ITEM ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 size_t MAX_PATH ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int PLIB_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ lstLib ; 
 TYPE_1__* lstLibPtr ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void FUNC5(DWORD pid, LPVOID lpBaseOfDll, HANDLE hFile, char *dllname) {
	if (lstLib == 0) {
		lstLib = FUNC1 (0, PLIB_MAX * sizeof (LIB_ITEM), MEM_COMMIT, PAGE_READWRITE);
	}
	lstLibPtr = (PLIB_ITEM)lstLib;
	if (!lstLibPtr) {
		FUNC0 ("Failed to allocate memory");
		return;
	}
	for (int x = 0; x < PLIB_MAX; x++) {
		if (lstLibPtr->hFile == hFile) {
			return;
		}
		if (!lstLibPtr->hFile) {
			lstLibPtr->pid = pid;
			lstLibPtr->hFile = hFile; //DBGEvent->u.LoadDll.hFile;
			lstLibPtr->BaseOfDll = lpBaseOfDll;//DBGEvent->u.LoadDll.lpBaseOfDll;
			FUNC4 (lstLibPtr->Path, dllname, MAX_PATH - 1);
			int i = FUNC3 (dllname);
			int n = i;
			while (dllname[i] != '\\' && i >= 0) {
				i--;
			}
			FUNC4 (lstLibPtr->Name, dllname + i + 1, (size_t)n - i);
			return;
		}
		lstLibPtr++;
	}
	FUNC2 ("__r_debug_lstLibAdd: Cannot find slot\n");
}