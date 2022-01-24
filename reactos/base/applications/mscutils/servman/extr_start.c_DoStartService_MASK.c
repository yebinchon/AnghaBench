#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dwCheckPoint; scalar_t__ dwCurrentState; int dwWaitHint; } ;
typedef  TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_STEP ; 
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 scalar_t__** FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SC_STATUS_PROCESS_INFO ; 
 int SERVICE_QUERY_STATUS ; 
 scalar_t__ SERVICE_RUNNING ; 
 int SERVICE_START ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,scalar_t__**) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

BOOL
FUNC12(LPWSTR ServiceName,
               HANDLE hProgress,
               LPWSTR lpStartParams)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    SERVICE_STATUS_PROCESS ServiceStatus;
    DWORD BytesNeeded = 0;
    DWORD StartTickCount;
    DWORD OldCheckPoint;
    DWORD WaitTime;
    DWORD MaxWait;
    BOOL Result = FALSE;

    BOOL bWhiteSpace = TRUE;
    LPWSTR lpChar;
    DWORD dwArgsCount = 0;
    LPCWSTR *lpArgsVector = NULL;

    if (lpStartParams != NULL)
    {
        /* Count the number of arguments */
        lpChar = lpStartParams;
        while (*lpChar != 0)
        {
            if (FUNC11(*lpChar))
            {
                bWhiteSpace = TRUE;
            }
            else
            {
                if (bWhiteSpace != FALSE)
                {
                    dwArgsCount++;
                    bWhiteSpace = FALSE;
                }
            }

            lpChar++;
        }

        /*
         * Allocate the arguments vector.
         * Do not add the service name here because services.exe does it for us!
         */
        lpArgsVector = FUNC4(LMEM_FIXED, dwArgsCount * sizeof(LPCWSTR));
        if (!lpArgsVector)
            return FALSE;

        /* Fill the arguments vector */
        dwArgsCount = 0;
        bWhiteSpace = TRUE;
        lpChar = lpStartParams;
        while (*lpChar != 0)
        {
            if (FUNC11(*lpChar))
            {
                *lpChar = 0;
                bWhiteSpace = TRUE;
            }
            else
            {
                if (bWhiteSpace != FALSE)
                {
                    lpArgsVector[dwArgsCount] = lpChar;
                    dwArgsCount++;
                    bWhiteSpace = FALSE;
                }
            }

            lpChar++;
        }
    }

    hSCManager = FUNC6(NULL,
                                NULL,
                                SC_MANAGER_CONNECT);
    if (!hSCManager)
    {
        if (lpArgsVector)
            FUNC5((LPVOID)lpArgsVector);
        return FALSE;
    }

    hService = FUNC7(hSCManager,
                            ServiceName,
                            SERVICE_START | SERVICE_QUERY_STATUS);
    if (!hService)
    {
        FUNC0(hSCManager);
        if (lpArgsVector)
            FUNC5((LPVOID)lpArgsVector);
        return FALSE;
    }

    /* Start the service */
    Result = FUNC10(hService,
                            dwArgsCount,
                            lpArgsVector);
    if (!Result && FUNC1() == ERROR_SERVICE_ALREADY_RUNNING)
    {
        /* If it's already running, just return TRUE */
        Result = TRUE;
    }
    else if (Result)
    {
        if (hProgress)
        {
            /* Increment the progress bar */
            FUNC3(hProgress, DEFAULT_STEP);
        }

        /* Get the service status to check if it's running */
        Result = FUNC8(hService,
                                        SC_STATUS_PROCESS_INFO,
                                        (LPBYTE)&ServiceStatus,
                                        sizeof(SERVICE_STATUS_PROCESS),
                                        &BytesNeeded);
        if (Result)
        {
            Result = FALSE;
            MaxWait = MAX_WAIT_TIME;
            OldCheckPoint = ServiceStatus.dwCheckPoint;
            StartTickCount = FUNC2();

            /* Loop until it's running */
            while (ServiceStatus.dwCurrentState != SERVICE_RUNNING)
            {
                int i;
                /* Fixup the wait time */
                WaitTime = ServiceStatus.dwWaitHint / 10;

                if (WaitTime < 1000) WaitTime = 1000;
                else if (WaitTime > 10000) WaitTime = 10000;

                /* We don't wanna wait for up to 10 secs without incrementing */
                for (i = WaitTime / 1000; i > 0; i--)
                {
                    FUNC9(1000);
                    if (hProgress)
                    {
                        /* Increment the progress bar */
                        FUNC3(hProgress, DEFAULT_STEP);
                    }
                }


                /* Get the latest status info */
                if (!FUNC8(hService,
                                            SC_STATUS_PROCESS_INFO,
                                            (LPBYTE)&ServiceStatus,
                                            sizeof(SERVICE_STATUS_PROCESS),
                                            &BytesNeeded))
                {
                    /* Something went wrong... */
                    break;
                }

                /* Is the service making progress? */
                if (ServiceStatus.dwCheckPoint > OldCheckPoint)
                {
                    /* It is, get the latest tickcount to reset the max wait time */
                    StartTickCount = FUNC2();
                    OldCheckPoint = ServiceStatus.dwCheckPoint;
                }
                else
                {
                    /* It's not, make sure we haven't exceeded our wait time */
                    if (FUNC2() >= StartTickCount + MaxWait)
                    {
                        /* We have, give up */
                        break;
                    }
                }
            }
        }

        if (ServiceStatus.dwCurrentState == SERVICE_RUNNING)
        {
            Result = TRUE;
        }
    }

    FUNC0(hService);

    FUNC0(hSCManager);

    if (lpArgsVector)
        FUNC5((LPVOID)lpArgsVector);

    return Result;
}