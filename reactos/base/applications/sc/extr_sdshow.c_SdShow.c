
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int * LPTSTR ;
typedef int * LPCTSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ConvertSecurityDescriptorToStringSecurityDescriptor (int *,int ,int ,int **,int *) ;
 int DACL_SECURITY_INFORMATION ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int * GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LocalFree (int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int *,int ) ;
 int QueryServiceObjectSecurity (int *,int ,int *,int,int*) ;
 int READ_CONTROL ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SDDL_REVISION_1 ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,int *) ;

BOOL SdShow(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;
    PSECURITY_DESCRIPTOR pSecurityDescriptor = ((void*)0);
    LPTSTR pStringBuffer = ((void*)0);





    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, ServiceName, READ_CONTROL);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!QueryServiceObjectSecurity(hService,
                                    DACL_SECURITY_INFORMATION,
                                    (PSECURITY_DESCRIPTOR)&pSecurityDescriptor,
                                    sizeof(PSECURITY_DESCRIPTOR),
                                    &cbBytesNeeded))
    {
        if (cbBytesNeeded == 0)
        {
            _tprintf(_T("[SC] QueryServiceObjectSecurity FAILED %lu:\n\n"), GetLastError());
            bResult = FALSE;
            goto done;
        }
    }

    pSecurityDescriptor = HeapAlloc(GetProcessHeap(), 0, cbBytesNeeded);
    if (pSecurityDescriptor == ((void*)0))
    {
        SetLastError(ERROR_OUTOFMEMORY);
        _tprintf(_T("[SC] HeapAlloc FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!QueryServiceObjectSecurity(hService,
                                    DACL_SECURITY_INFORMATION,
                                    pSecurityDescriptor,
                                    cbBytesNeeded,
                                    &cbBytesNeeded))
    {
        _tprintf(_T("[SC] QueryServiceObjectSecurity FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!ConvertSecurityDescriptorToStringSecurityDescriptor(pSecurityDescriptor,
                                                             SDDL_REVISION_1,
                                                             DACL_SECURITY_INFORMATION,
                                                             &pStringBuffer,
                                                             ((void*)0)))
    {
        _tprintf(_T("[SC] ConvertSecurityDescriptorToStringSecurityDescriptor FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("\n%s\n"), pStringBuffer);

done:
    if (bResult == FALSE)
        ReportLastError();

    if (pStringBuffer != ((void*)0))
        LocalFree(pStringBuffer);

    if (pSecurityDescriptor != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pSecurityDescriptor);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
