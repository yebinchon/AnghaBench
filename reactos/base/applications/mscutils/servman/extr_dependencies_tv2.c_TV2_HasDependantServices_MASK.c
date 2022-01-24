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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int SERVICE_ENUMERATE_DEPENDENTS ; 
 int SERVICE_QUERY_STATUS ; 
 int /*<<< orphan*/  SERVICE_STATE_ALL ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC5(LPWSTR lpServiceName)
{
    HANDLE hSCManager;
    HANDLE hService;
    DWORD dwBytesNeeded, dwCount;
    BOOL bRet = FALSE;

    hSCManager = FUNC3(NULL,
                                NULL,
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hService = FUNC4(hSCManager,
                                lpServiceName,
                                SERVICE_QUERY_STATUS | SERVICE_ENUMERATE_DEPENDENTS);
        if (hService)
        {
            /* Does this have any dependencies? */
            if (!FUNC1(hService,
                                       SERVICE_STATE_ALL,
                                       NULL,
                                       0,
                                       &dwBytesNeeded,
                                       &dwCount))
            {
                 if (FUNC2() == ERROR_MORE_DATA)
                 {
                     /* It does, return TRUE */
                     bRet = TRUE;
                 }
            }

            FUNC0(hService);
        }

        FUNC0(hSCManager);
    }

    return bRet;
}