
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dwCheckPoint; scalar_t__ dwCurrentState; int dwWaitHint; int member_0; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SERVICE_STATUS ;
typedef int SC_HANDLE ;
typedef int LPWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ HWND ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int ) ;
 scalar_t__ ControlService (int ,scalar_t__,int *) ;
 int DEFAULT_STEP ;
 scalar_t__ FALSE ;
 scalar_t__ GetTickCount () ;
 int IncrementProgressBar (scalar_t__,int ) ;
 scalar_t__ MAX_WAIT_TIME ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,int ,int) ;
 scalar_t__ QueryServiceStatusEx (int ,int ,int ,int,scalar_t__*) ;
 int SC_MANAGER_CONNECT ;
 int SC_STATUS_PROCESS_INFO ;


 int SERVICE_INTERROGATE ;
 scalar_t__ SERVICE_PAUSED ;
 int SERVICE_PAUSE_CONTINUE ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 int Sleep (int) ;
 scalar_t__ TRUE ;

BOOL
DoControlService(LPWSTR ServiceName,
                 HWND hProgress,
                 DWORD Control)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    SERVICE_STATUS_PROCESS ServiceStatus = {0};
    SERVICE_STATUS Status;
    DWORD BytesNeeded = 0;
    DWORD StartTickCount;
    DWORD OldCheckPoint;
    DWORD WaitTime;
    DWORD MaxWait;
    DWORD ReqState, i;
    BOOL Result;


    switch (Control)
    {
        case 128:
            ReqState = SERVICE_PAUSED;
            break;
        case 129:
            ReqState = SERVICE_RUNNING;
            break;
        default:

            return FALSE;
    }

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_CONNECT);
    if (!hSCManager) return FALSE;

    hService = OpenServiceW(hSCManager,
                            ServiceName,
                            SERVICE_PAUSE_CONTINUE | SERVICE_INTERROGATE | SERVICE_QUERY_STATUS);
    if (!hService)
    {
        CloseServiceHandle(hSCManager);
        return FALSE;
    }


    Result = ControlService(hService,
                            Control,
                            &Status);
    if (Result)
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


            while (ServiceStatus.dwCurrentState != ReqState)
            {

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
                    IncrementProgressBar(hProgress, DEFAULT_STEP);
                }
                else
                {

                    if(GetTickCount() >= StartTickCount + MaxWait)
                    {

                        break;
                    }
                }
            }
        }

        if (ServiceStatus.dwCurrentState == ReqState)
        {
            Result = TRUE;
        }
    }

    CloseServiceHandle(hService);
    CloseServiceHandle(hSCManager);

    return Result;
}
