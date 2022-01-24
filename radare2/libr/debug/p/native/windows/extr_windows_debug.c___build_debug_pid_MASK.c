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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  RDebugPid ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_VM_READ ; 
 scalar_t__ FUNC1 (int,int*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int,char,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static RDebugPid *FUNC7(int pid, HANDLE ph, const TCHAR* name) {
	char *path = NULL;
	int uid = -1;
	if (!ph) {
		ph = FUNC6 (PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, pid);
		if (ph) {
			path = FUNC2 (ph, NULL);
			DWORD sid;
			if (FUNC1 (pid, &sid)) {
				uid = sid;
			}
			FUNC0 (ph);
		} else {
			return NULL;
		}
	} else {
		path = FUNC2 (ph, NULL);
		DWORD sid;
		if (FUNC1 (pid, &sid)) {
			uid = sid;
		}
	}
	if (!path) {
		path = FUNC5 (name);
	}
	// it is possible to get pc for a non debugged process but the operation is expensive and might be risky
	RDebugPid *ret = FUNC4 (path, pid, uid, 's', 0);
	FUNC3 (path);
	return ret;
}