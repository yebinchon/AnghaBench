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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/ * LPSERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int SERVICE_QUERY_STATUS ; 
 int SERVICE_START ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 

BOOL FUNC12(LPCTSTR ServiceName, LPCTSTR *ServiceArgs, INT ArgCount)
{
    SC_HANDLE hSCManager = NULL;
    SC_HANDLE hSc = NULL;
    LPSERVICE_STATUS_PROCESS pServiceInfo = NULL;
    BOOL bResult = TRUE;

#ifdef SCDBG
    LPCTSTR *TmpArgs = ServiceArgs;
    INT TmpCnt = ArgCount;
    _tprintf(_T("service to control - %s\n"), ServiceName);
    _tprintf(_T("Arguments:\n"));
    while (TmpCnt)
    {
        _tprintf(_T("  %s\n"), *TmpArgs);
        TmpArgs++;
        TmpCnt--;
    }
    _tprintf(_T("\n"));
#endif /* SCDBG */

    hSCManager = FUNC4(NULL,
                               NULL,
                               SC_MANAGER_CONNECT);
    if (hSCManager == NULL)
    {
        FUNC11(FUNC10("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    hSc = FUNC5(hSCManager,
                      ServiceName,
                      SERVICE_START | SERVICE_QUERY_STATUS);
    if (hSc == NULL)
    {
        FUNC11(FUNC10("[SC] OpenService FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    if (!ArgCount)
    {
        ServiceArgs = NULL;
    }

    if (!FUNC9(hSc,
                      ArgCount,
                      ServiceArgs))
    {
        FUNC11(FUNC10("[SC] StartService FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    pServiceInfo = FUNC7(ServiceName);
    if (pServiceInfo != NULL)
    {
        FUNC6(ServiceName,
                     NULL,
                     pServiceInfo,
                     TRUE);

        FUNC3(FUNC2(), 0, pServiceInfo);
    }

done:
    if (bResult == FALSE)
        FUNC8();

    if (hSc)
        FUNC0(hSc);

    if (hSCManager)
        FUNC0(hSCManager);

    return bResult;
}