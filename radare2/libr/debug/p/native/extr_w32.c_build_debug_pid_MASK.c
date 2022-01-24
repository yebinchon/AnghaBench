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
struct TYPE_3__ {char* szExeFile; int /*<<< orphan*/  th32ProcessID; } ;
typedef  char TCHAR ;
typedef  int /*<<< orphan*/  RDebugPid ;
typedef  TYPE_1__ PROCESSENTRY32 ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RDebugPid *FUNC6(PROCESSENTRY32 *pe) {
	TCHAR image_name[MAX_PATH + 1];
	DWORD length = MAX_PATH;
	RDebugPid *ret;
	char *name;
	HANDLE process = FUNC4 (0x1000, //PROCESS_QUERY_LIMITED_INFORMATION,
		FALSE, pe->th32ProcessID);

	*image_name = '\0';
	if (process) {
		if (&w32_QueryFullProcessImageName) {
			FUNC5 (process, 0, image_name, &length);
		}
		FUNC0(process);
	}
	if (*image_name) {
		name = FUNC3 (image_name);
	} else {
		name = FUNC3 (pe->szExeFile);
	}
	ret = FUNC2 (name, pe->th32ProcessID, 0, 's', 0);
	FUNC1 (name);
	return ret;
}