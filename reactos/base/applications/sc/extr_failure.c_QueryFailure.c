
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t cActions; TYPE_1__* lpsaActions; scalar_t__ lpCommand; scalar_t__ lpRebootMsg; int dwResetPeriod; } ;
struct TYPE_5__ {int Type; int Delay; } ;
typedef int * SC_HANDLE ;
typedef TYPE_2__* LPSERVICE_FAILURE_ACTIONS ;
typedef int LPCTSTR ;
typedef int * LPBYTE ;
typedef size_t INT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int QueryServiceConfig2 (int *,int ,int *,scalar_t__,scalar_t__*) ;
 int ReportLastError () ;




 int SC_MANAGER_CONNECT ;
 int SERVICE_CONFIG_FAILURE_ACTIONS ;
 int SERVICE_QUERY_CONFIG ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ _T (char*) ;
 int _tprintf (scalar_t__,...) ;

BOOL QueryFailure(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;
    LPSERVICE_FAILURE_ACTIONS pServiceFailure = ((void*)0);
    INT i;





    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, ServiceName, SERVICE_QUERY_CONFIG);
    if (hService == ((void*)0))
    {
        bResult = FALSE;
        goto done;
    }

    if (!QueryServiceConfig2(hService,
                             SERVICE_CONFIG_FAILURE_ACTIONS,
                             ((void*)0),
                             0,
                             &cbBytesNeeded))
    {
        if (cbBytesNeeded == 0)
        {
            bResult = FALSE;
            goto done;
        }
    }

    pServiceFailure = HeapAlloc(GetProcessHeap(), 0, cbBytesNeeded);
    if (pServiceFailure == ((void*)0))
    {
        SetLastError(ERROR_OUTOFMEMORY);
        bResult = FALSE;
        goto done;
    }

    if (!QueryServiceConfig2(hService,
                             SERVICE_CONFIG_FAILURE_ACTIONS,
                             (LPBYTE)pServiceFailure,
                             cbBytesNeeded,
                             &cbBytesNeeded))
    {
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("SERVICE_NAME: %s\n"), ServiceName);
    _tprintf(_T("        RESET_PERIOD       : %lu seconds\n"), pServiceFailure->dwResetPeriod);
    _tprintf(_T("        REBOOT_MESSAGE     : %s\n"), (pServiceFailure->lpRebootMsg) ? pServiceFailure->lpRebootMsg : _T(""));
    _tprintf(_T("        COMMAND_LINE       : %s\n"), (pServiceFailure->lpCommand) ? pServiceFailure->lpCommand : _T(""));
    _tprintf(_T("        FAILURE_ACTIONS    : "));
    for (i = 0; i < pServiceFailure->cActions; i++)
    {
        if (i != 0)
            _tprintf(_T("                             "));
        switch (pServiceFailure->lpsaActions[i].Type)
        {
            case 131:
                continue;

            case 129:
                _tprintf(_T("RESTART -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            case 130:
                _tprintf(_T("REBOOT -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            case 128:
                _tprintf(_T("RUN_COMMAND -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            default:
                _tprintf(_T("\n"));
                break;
        }
    }

done:
    if (bResult == FALSE)
        ReportLastError();

    if (pServiceFailure != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pServiceFailure);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
