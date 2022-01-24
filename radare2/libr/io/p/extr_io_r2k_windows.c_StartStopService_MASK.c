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
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DELETE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SC_MANAGER_CREATE_SERVICE ; 
 int /*<<< orphan*/  SERVICE_CONTROL_STOP ; 
 int SERVICE_START ; 
 int SERVICE_STOP ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

BOOL FUNC7(LPCTSTR lpServiceName, BOOL bStop) {
	HANDLE hSCManager;
	HANDLE hService;
	SERVICE_STATUS ssStatus;
	BOOL ret = FALSE;
	hSCManager = FUNC3 (NULL, NULL, SC_MANAGER_CREATE_SERVICE);
	if (hSCManager)	{
		hService = FUNC4 (hSCManager, lpServiceName, SERVICE_START | DELETE | SERVICE_STOP);
		if (hService) {
			if (!bStop) {
				if (FUNC5 (hService, 0, NULL)) {
					FUNC6 ("Service started [OK]\n");
					ret = TRUE;
				} else {
					FUNC6 ("Service started [FAIL]\n");
				}
			} else {
				if (FUNC1 (hService, SERVICE_CONTROL_STOP, &ssStatus)) {
					FUNC6 ("Service Stopped [OK]\n");
					ret = TRUE;
				} else {
					FUNC6 ("Service Stopped [FAIL]\n");
				}
			}
			FUNC0 (hService);
			FUNC2 (hService);
		}
		FUNC0 (hSCManager);
	}
	return ret;
}