
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int * LPSERVICE_STATUS_PROCESS ;
typedef int LPCTSTR ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 scalar_t__ QueryServiceStatusEx (int *,int ,int *,scalar_t__,scalar_t__*) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_QUERY_STATUS ;

LPSERVICE_STATUS_PROCESS
QueryService(LPCTSTR ServiceName)
{
    SC_HANDLE hSCManager = ((void*)0);
    LPSERVICE_STATUS_PROCESS pServiceInfo = ((void*)0);
    SC_HANDLE hSc = ((void*)0);
    DWORD BufSiz = 0;
    DWORD BytesNeeded = 0;
    DWORD Ret;

    hSCManager = OpenSCManager(((void*)0),
                               ((void*)0),
                               SC_MANAGER_CONNECT);
    if (hSCManager == ((void*)0))
    {
        ReportLastError();
        return ((void*)0);
    }

    hSc = OpenService(hSCManager,
                      ServiceName,
                      SERVICE_QUERY_STATUS);
    if (hSc == ((void*)0))
        goto fail;

    Ret = QueryServiceStatusEx(hSc,
                               SC_STATUS_PROCESS_INFO,
                               ((void*)0),
                               BufSiz,
                               &BytesNeeded);
    if ((Ret != 0) || (GetLastError() != ERROR_INSUFFICIENT_BUFFER))
        goto fail;

    pServiceInfo = (LPSERVICE_STATUS_PROCESS)HeapAlloc(GetProcessHeap(),
                                                       0,
                                                       BytesNeeded);
    if (pServiceInfo == ((void*)0))
        goto fail;

    if (!QueryServiceStatusEx(hSc,
                              SC_STATUS_PROCESS_INFO,
                              (LPBYTE)pServiceInfo,
                              BytesNeeded,
                              &BytesNeeded))
    {
        goto fail;
    }

    CloseServiceHandle(hSc);
    CloseServiceHandle(hSCManager);
    return pServiceInfo;

fail:
    ReportLastError();
    if (pServiceInfo) HeapFree(GetProcessHeap(), 0, pServiceInfo);
    if (hSc) CloseServiceHandle(hSc);
    if (hSCManager) CloseServiceHandle(hSCManager);
    return ((void*)0);
}
