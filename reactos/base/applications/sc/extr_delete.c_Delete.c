
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int LPCTSTR ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int DELETE ;
 int DeleteService (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL Delete(LPCTSTR ServiceName)
{
    SC_HANDLE hSCManager = ((void*)0);
    SC_HANDLE hSc = ((void*)0);
    BOOL bRet = TRUE;





    hSCManager = OpenSCManager(((void*)0),
                               ((void*)0),
                               SC_MANAGER_CONNECT);
    if (hSCManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bRet = FALSE;
        goto done;
    }

    hSc = OpenService(hSCManager, ServiceName, DELETE);
    if (hSc == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bRet = FALSE;
        goto done;
    }

    if (!DeleteService(hSc))
    {
        _tprintf(_T("[SC] DeleteService FAILED %lu:\n\n"), GetLastError());
        bRet = FALSE;
        goto done;
    }

    _tprintf(_T("[SC] DeleteService SUCCESS\n\n"));

done:
    if (bRet == FALSE)
        ReportLastError();

    if (hSc)
        CloseServiceHandle(hSc);

    if (hSCManager)
        CloseServiceHandle(hSCManager);

    return bRet;
}
