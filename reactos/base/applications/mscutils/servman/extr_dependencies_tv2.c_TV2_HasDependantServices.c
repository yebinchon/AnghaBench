
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ ERROR_MORE_DATA ;
 int EnumDependentServices (scalar_t__,int ,int *,int ,int *,int *) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ENUMERATE_DEPENDENTS ;
 int SERVICE_QUERY_STATUS ;
 int SERVICE_STATE_ALL ;
 int TRUE ;

BOOL
TV2_HasDependantServices(LPWSTR lpServiceName)
{
    HANDLE hSCManager;
    HANDLE hService;
    DWORD dwBytesNeeded, dwCount;
    BOOL bRet = FALSE;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hService = OpenServiceW(hSCManager,
                                lpServiceName,
                                SERVICE_QUERY_STATUS | SERVICE_ENUMERATE_DEPENDENTS);
        if (hService)
        {

            if (!EnumDependentServices(hService,
                                       SERVICE_STATE_ALL,
                                       ((void*)0),
                                       0,
                                       &dwBytesNeeded,
                                       &dwCount))
            {
                 if (GetLastError() == ERROR_MORE_DATA)
                 {

                     bRet = TRUE;
                 }
            }

            CloseServiceHandle(hService);
        }

        CloseServiceHandle(hSCManager);
    }

    return bRet;
}
