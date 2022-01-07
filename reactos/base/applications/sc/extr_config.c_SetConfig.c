
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpDisplayName; int lpPassword; int lpServiceStartName; int lpDependencies; int dwTagId; scalar_t__ bTagId; int lpLoadOrderGroup; int lpBinaryPathName; int dwErrorControl; int dwStartType; int dwServiceType; int lpServiceName; } ;
typedef TYPE_1__ SERVICE_CREATE_INFO ;
typedef int * SC_HANDLE ;
typedef int LPCTSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int ChangeServiceConfig (int *,int ,int ,int ,int ,int ,int *,int ,int ,int ,int ) ;
 int CloseServiceHandle (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int ParseCreateConfigArguments (int *,int ,scalar_t__,TYPE_1__*) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_CHANGE_CONFIG ;
 int SetConfigUsage () ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL SetConfig(LPCTSTR *ServiceArgs, INT ArgCount)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    SERVICE_CREATE_INFO ServiceInfo;

    if (!ParseCreateConfigArguments(ServiceArgs, ArgCount, TRUE, &ServiceInfo))
    {
        SetConfigUsage();
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
                           ServiceInfo.lpServiceName,
                           SERVICE_CHANGE_CONFIG);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!ChangeServiceConfig(hService,
                             ServiceInfo.dwServiceType,
                             ServiceInfo.dwStartType,
                             ServiceInfo.dwErrorControl,
                             ServiceInfo.lpBinaryPathName,
                             ServiceInfo.lpLoadOrderGroup,
                             ServiceInfo.bTagId ? &ServiceInfo.dwTagId : ((void*)0),
                             ServiceInfo.lpDependencies,
                             ServiceInfo.lpServiceStartName,
                             ServiceInfo.lpPassword,
                             ServiceInfo.lpDisplayName))
    {
        _tprintf(_T("[SC] ChangeServiceConfig FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("[SC] ChangeServiceConfig SUCCESS\n\n"));

done:
    if (bResult == FALSE)
        ReportLastError();

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
