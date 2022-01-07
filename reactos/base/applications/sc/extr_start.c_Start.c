
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int * LPSERVICE_STATUS_PROCESS ;
typedef int LPCTSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int) ;
 int PrintService (int ,int *,int *,scalar_t__) ;
 int * QueryService (int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_QUERY_STATUS ;
 int SERVICE_START ;
 int StartService (int *,scalar_t__,int *) ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL Start(LPCTSTR ServiceName, LPCTSTR *ServiceArgs, INT ArgCount)
{
    SC_HANDLE hSCManager = ((void*)0);
    SC_HANDLE hSc = ((void*)0);
    LPSERVICE_STATUS_PROCESS pServiceInfo = ((void*)0);
    BOOL bResult = TRUE;
    hSCManager = OpenSCManager(((void*)0),
                               ((void*)0),
                               SC_MANAGER_CONNECT);
    if (hSCManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hSc = OpenService(hSCManager,
                      ServiceName,
                      SERVICE_START | SERVICE_QUERY_STATUS);
    if (hSc == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!ArgCount)
    {
        ServiceArgs = ((void*)0);
    }

    if (!StartService(hSc,
                      ArgCount,
                      ServiceArgs))
    {
        _tprintf(_T("[SC] StartService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    pServiceInfo = QueryService(ServiceName);
    if (pServiceInfo != ((void*)0))
    {
        PrintService(ServiceName,
                     ((void*)0),
                     pServiceInfo,
                     TRUE);

        HeapFree(GetProcessHeap(), 0, pServiceInfo);
    }

done:
    if (bResult == FALSE)
        ReportLastError();

    if (hSc)
        CloseServiceHandle(hSc);

    if (hSCManager)
        CloseServiceHandle(hSCManager);

    return bResult;
}
