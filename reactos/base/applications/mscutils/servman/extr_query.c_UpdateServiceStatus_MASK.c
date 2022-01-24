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
struct TYPE_3__ {int /*<<< orphan*/  ServiceStatusProcess; int /*<<< orphan*/  lpServiceName; } ;
typedef  int /*<<< orphan*/  SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_1__ ENUM_SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 
 int /*<<< orphan*/  SC_STATUS_PROCESS_INFO ; 
 int /*<<< orphan*/  SERVICE_QUERY_STATUS ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC4(ENUM_SERVICE_STATUS_PROCESS* pService)
{
    SC_HANDLE hScm;
    BOOL bRet = FALSE;

    hScm = FUNC1(NULL,
                          NULL,
                          SC_MANAGER_ENUMERATE_SERVICE);
    if (hScm != NULL)
    {
        SC_HANDLE hService;

        hService = FUNC2(hScm,
                                pService->lpServiceName,
                                SERVICE_QUERY_STATUS);
        if (hService)
        {
            DWORD size;

            FUNC3(hService,
                                 SC_STATUS_PROCESS_INFO,
                                 (LPBYTE)&pService->ServiceStatusProcess,
                                 sizeof(SERVICE_STATUS_PROCESS),
                                 &size);

            FUNC0(hService);
            bRet = TRUE;
        }

        FUNC0(hScm);
    }

    return bRet;
}