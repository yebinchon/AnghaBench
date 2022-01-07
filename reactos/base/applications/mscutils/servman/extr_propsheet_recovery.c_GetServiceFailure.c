
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pServiceFailure; TYPE_1__* pService; } ;
struct TYPE_4__ {int lpServiceName; } ;
typedef int * SC_HANDLE ;
typedef TYPE_2__* PRECOVERYDATA ;
typedef int * LPSERVICE_FAILURE_ACTIONS ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int QueryServiceConfig2 (int *,int ,int *,scalar_t__,scalar_t__*) ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_CONFIG_FAILURE_ACTIONS ;
 int SERVICE_QUERY_CONFIG ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static
BOOL
GetServiceFailure(
    PRECOVERYDATA pRecoveryData)
{
    LPSERVICE_FAILURE_ACTIONS pServiceFailure = ((void*)0);
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;

    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, pRecoveryData->pService->lpServiceName, SERVICE_QUERY_CONFIG);
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

    pRecoveryData->pServiceFailure = pServiceFailure;

done:
    if (bResult == FALSE && pServiceFailure != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pServiceFailure);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
