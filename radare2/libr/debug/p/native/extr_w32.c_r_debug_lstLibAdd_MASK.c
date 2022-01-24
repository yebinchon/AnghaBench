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
struct TYPE_3__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Path; int /*<<< orphan*/  BaseOfDll; scalar_t__ hFile; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__* PLIB_ITEM ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LIB_ITEM ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int PLIB_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ lstLib ; 
 TYPE_1__* lstLibPtr ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(DWORD pid,LPVOID lpBaseOfDll, HANDLE hFile,char * dllname) {
	int x;
	if (lstLib == 0)
		lstLib = FUNC0 (0, PLIB_MAX * sizeof (LIB_ITEM), MEM_COMMIT, PAGE_READWRITE);
	lstLibPtr = (PLIB_ITEM)lstLib;
	for (x=0; x<PLIB_MAX; x++) {
		if (!lstLibPtr->hFile) {
			lstLibPtr->pid = pid;
			lstLibPtr->hFile = hFile; //DBGEvent->u.LoadDll.hFile;
			lstLibPtr->BaseOfDll = lpBaseOfDll;//DBGEvent->u.LoadDll.lpBaseOfDll;
			FUNC3 (lstLibPtr->Path,dllname,MAX_PATH-1);
			int i = FUNC2 (dllname);
                        int n = i;
                        while(dllname[i] != '\\' && i >= 0) {
                             i--;
                        }
                        FUNC3 (lstLibPtr->Name, &dllname[i+1], n-i);
			return;
		}
		lstLibPtr++;
	}
	FUNC1("r_debug_lstLibAdd: Cannot find slot\n");
}