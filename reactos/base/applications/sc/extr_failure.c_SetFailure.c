
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpsaActions; } ;
typedef TYPE_1__ SERVICE_FAILURE_ACTIONS ;
typedef int * SC_HANDLE ;
typedef int * LPCTSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef scalar_t__ BOOLEAN ;
typedef scalar_t__ BOOL ;


 int ChangeServiceConfig2 (int *,int ,int ) ;
 int CloseServiceHandle (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int *,int) ;
 int ParseFailureArguments (int **,int ,int **,TYPE_1__*) ;
 int ReportLastError () ;
 int RtlAdjustPrivilege (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_CHANGE_CONFIG ;
 int SERVICE_CONFIG_FAILURE_ACTIONS ;
 int SERVICE_START ;
 int SE_SHUTDOWN_PRIVILEGE ;
 int SetFailureUsage () ;
 scalar_t__ TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL
SetFailure(
    LPCTSTR *ServiceArgs,
    INT ArgCount)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    SERVICE_FAILURE_ACTIONS FailureActions;
    LPCTSTR lpServiceName = ((void*)0);
    BOOLEAN Old = FALSE;

    ZeroMemory(&FailureActions, sizeof(SERVICE_FAILURE_ACTIONS));

    if (!ParseFailureArguments(ServiceArgs, ArgCount, &lpServiceName, &FailureActions))
    {
        SetFailureUsage();
        return FALSE;
    }

    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager,
                           lpServiceName,
                           SERVICE_CHANGE_CONFIG | SERVICE_START);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    RtlAdjustPrivilege(SE_SHUTDOWN_PRIVILEGE, TRUE, FALSE, &Old);

    if (!ChangeServiceConfig2(hService,
                              SERVICE_CONFIG_FAILURE_ACTIONS,
                              (LPBYTE)&FailureActions))
    {
        _tprintf(_T("[SC] ChangeServiceConfig2 FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("[SC] ChangeServiceConfig2 SUCCESS\n\n"));

done:
    RtlAdjustPrivilege(SE_SHUTDOWN_PRIVILEGE, Old, FALSE, &Old);

    if (bResult == FALSE)
        ReportLastError();

    if (FailureActions.lpsaActions != ((void*)0))
        HeapFree(GetProcessHeap(), 0, FailureActions.lpsaActions);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
