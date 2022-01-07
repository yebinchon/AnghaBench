
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwCheckPoint; scalar_t__ dwCurrentState; int dwWaitHint; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SC_HANDLE ;
typedef scalar_t__* LPWSTR ;
typedef int LPVOID ;
typedef scalar_t__* LPCWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int ) ;
 int DEFAULT_STEP ;
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int GetTickCount () ;
 int IncrementProgressBar (scalar_t__,int ) ;
 int LMEM_FIXED ;
 scalar_t__** LocalAlloc (int ,int) ;
 int LocalFree (int ) ;
 int MAX_WAIT_TIME ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,scalar_t__*,int) ;
 scalar_t__ QueryServiceStatusEx (int ,int ,int ,int,int*) ;
 int SC_MANAGER_CONNECT ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 int SERVICE_START ;
 int Sleep (int) ;
 scalar_t__ StartServiceW (int ,int,scalar_t__**) ;
 scalar_t__ TRUE ;
 scalar_t__ iswspace (scalar_t__) ;

BOOL
DoStartService(LPWSTR ServiceName,
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
    LPCWSTR *lpArgsVector = ((void*)0);

    if (lpStartParams != ((void*)0))
    {

        lpChar = lpStartParams;
        while (*lpChar != 0)
        {
            if (iswspace(*lpChar))
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





        lpArgsVector = LocalAlloc(LMEM_FIXED, dwArgsCount * sizeof(LPCWSTR));
        if (!lpArgsVector)
            return FALSE;


        dwArgsCount = 0;
        bWhiteSpace = TRUE;
        lpChar = lpStartParams;
        while (*lpChar != 0)
        {
            if (iswspace(*lpChar))
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

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_CONNECT);
    if (!hSCManager)
    {
        if (lpArgsVector)
            LocalFree((LPVOID)lpArgsVector);
        return FALSE;
    }

    hService = OpenServiceW(hSCManager,
                            ServiceName,
                            SERVICE_START | SERVICE_QUERY_STATUS);
    if (!hService)
    {
        CloseServiceHandle(hSCManager);
        if (lpArgsVector)
            LocalFree((LPVOID)lpArgsVector);
        return FALSE;
    }


    Result = StartServiceW(hService,
                            dwArgsCount,
                            lpArgsVector);
    if (!Result && GetLastError() == ERROR_SERVICE_ALREADY_RUNNING)
    {

        Result = TRUE;
    }
    else if (Result)
    {
        if (hProgress)
        {

            IncrementProgressBar(hProgress, DEFAULT_STEP);
        }


        Result = QueryServiceStatusEx(hService,
                                        SC_STATUS_PROCESS_INFO,
                                        (LPBYTE)&ServiceStatus,
                                        sizeof(SERVICE_STATUS_PROCESS),
                                        &BytesNeeded);
        if (Result)
        {
            Result = FALSE;
            MaxWait = MAX_WAIT_TIME;
            OldCheckPoint = ServiceStatus.dwCheckPoint;
            StartTickCount = GetTickCount();


            while (ServiceStatus.dwCurrentState != SERVICE_RUNNING)
            {
                int i;

                WaitTime = ServiceStatus.dwWaitHint / 10;

                if (WaitTime < 1000) WaitTime = 1000;
                else if (WaitTime > 10000) WaitTime = 10000;


                for (i = WaitTime / 1000; i > 0; i--)
                {
                    Sleep(1000);
                    if (hProgress)
                    {

                        IncrementProgressBar(hProgress, DEFAULT_STEP);
                    }
                }



                if (!QueryServiceStatusEx(hService,
                                            SC_STATUS_PROCESS_INFO,
                                            (LPBYTE)&ServiceStatus,
                                            sizeof(SERVICE_STATUS_PROCESS),
                                            &BytesNeeded))
                {

                    break;
                }


                if (ServiceStatus.dwCheckPoint > OldCheckPoint)
                {

                    StartTickCount = GetTickCount();
                    OldCheckPoint = ServiceStatus.dwCheckPoint;
                }
                else
                {

                    if (GetTickCount() >= StartTickCount + MaxWait)
                    {

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

    CloseServiceHandle(hService);

    CloseServiceHandle(hSCManager);

    if (lpArgsVector)
        LocalFree((LPVOID)lpArgsVector);

    return Result;
}
