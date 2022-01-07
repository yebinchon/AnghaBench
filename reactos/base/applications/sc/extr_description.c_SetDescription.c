
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lpDescription; } ;
typedef TYPE_1__ SERVICE_DESCRIPTION ;
typedef int * SC_HANDLE ;
typedef scalar_t__ LPTSTR ;
typedef scalar_t__ LPCTSTR ;
typedef int LPBYTE ;
typedef scalar_t__ BOOL ;


 int ChangeServiceConfig2 (int *,int ,int ) ;
 int CloseServiceHandle (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,scalar_t__,int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_CHANGE_CONFIG ;
 int SERVICE_CONFIG_DESCRIPTION ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL SetDescription(LPCTSTR ServiceName, LPCTSTR Description)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    SERVICE_DESCRIPTION ServiceDescription;





    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, ServiceName, SERVICE_CHANGE_CONFIG);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    ServiceDescription.lpDescription = (LPTSTR)Description;

    if (!ChangeServiceConfig2(hService,
                              SERVICE_CONFIG_DESCRIPTION,
                              (LPBYTE)&ServiceDescription))
    {
        _tprintf(_T("[SC] ChangeServiceConfig2 FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("[SC] ChangeServiceConfig2 SUCCESS\n\n"));

done:
    if (bResult == FALSE)
        ReportLastError();

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
