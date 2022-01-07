
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * SC_HANDLE ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int LPCTSTR ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ConvertStringSecurityDescriptorToSecurityDescriptor (int ,int ,int **,int *) ;
 int DACL_SECURITY_INFORMATION ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int LocalFree (int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SDDL_REVISION_1 ;
 int SetServiceObjectSecurity (int *,int ,int *) ;
 scalar_t__ TRUE ;
 int WRITE_DAC ;
 int _T (char*) ;
 int _tprintf (int ,int ) ;

BOOL SdSet(LPCTSTR ServiceName, LPCTSTR StringSecurityDescriptor)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    ULONG ulSecurityDescriptorSize = 0;
    PSECURITY_DESCRIPTOR pSecurityDescriptor = ((void*)0);





    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, ServiceName, WRITE_DAC);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!ConvertStringSecurityDescriptorToSecurityDescriptor(StringSecurityDescriptor,
                                                             SDDL_REVISION_1,
                                                             &pSecurityDescriptor,
                                                             &ulSecurityDescriptorSize))
    {
        _tprintf(_T("[SC] ConvertStringSecurityDescriptorToSecurityDescriptor FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!SetServiceObjectSecurity(hService,
                                  DACL_SECURITY_INFORMATION,
                                  pSecurityDescriptor))
    {
        _tprintf(_T("[SC] SetServiceObjectSecurity FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

done:
    if (bResult == FALSE)
        ReportLastError();

    if (pSecurityDescriptor != ((void*)0))
        LocalFree(pSecurityDescriptor);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
