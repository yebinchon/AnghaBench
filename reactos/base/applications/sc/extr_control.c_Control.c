
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwServiceFlags; scalar_t__ dwProcessId; } ;
typedef int Status ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int LPCTSTR ;
typedef scalar_t__ INT ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 int ControlService (int *,int,int *) ;
 int CopyMemory (TYPE_1__*,int *,int) ;
 int FALSE ;
 int GetLastError () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int,int) ;
 int PrintService (int,int *,TYPE_1__*,int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_INTERROGATE ;
 int SERVICE_PAUSE_CONTINUE ;
 int SERVICE_STOP ;
 int SERVICE_USER_DEFINED_CONTROL ;
 int TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL
Control(DWORD Control,
        LPCTSTR ServiceName,
        LPCTSTR *Args,
        INT ArgCount)
{
    SC_HANDLE hSCManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    SERVICE_STATUS Status;
    DWORD dwDesiredAccess = 0;
    BOOL bResult = TRUE;
    SERVICE_STATUS_PROCESS StatusEx;
    switch (Control)
    {
        case 128:
            dwDesiredAccess = SERVICE_STOP;
            break;

        case 129:
        case 136:
        case 130:
        case 134:
        case 131:
        case 132:
        case 133:
            dwDesiredAccess = SERVICE_PAUSE_CONTINUE;
            break;

        case 135:
            dwDesiredAccess = SERVICE_INTERROGATE;
            break;

        default:
            if (Control >= 128 && Control <= 255)
                dwDesiredAccess = SERVICE_USER_DEFINED_CONTROL;
            else
                dwDesiredAccess = 0;
            break;
    }

    hSCManager = OpenSCManager(((void*)0),
                               ((void*)0),
                               SC_MANAGER_CONNECT);
    if (hSCManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hSCManager,
                           ServiceName,
                           dwDesiredAccess);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!ControlService(hService,
                        Control,
                        &Status))
    {
        _tprintf(_T("[SC] ControlService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }


    CopyMemory(&StatusEx, &Status, sizeof(Status));
    StatusEx.dwProcessId = 0;
    StatusEx.dwServiceFlags = 0;

    PrintService(ServiceName,
                 ((void*)0),
                 &StatusEx,
                 FALSE);

done:
    if (!bResult)
        ReportLastError();

    if (hService)
        CloseServiceHandle(hService);

    if (hSCManager)
        CloseServiceHandle(hSCManager);

    return bResult;
}
