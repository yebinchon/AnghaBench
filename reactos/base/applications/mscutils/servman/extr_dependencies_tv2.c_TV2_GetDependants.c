
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SC_HANDLE ;
typedef int LPWSTR ;
typedef int * LPENUM_SERVICE_STATUSW ;
typedef int * LPENUM_SERVICE_STATUS ;
typedef int * LPDWORD ;
typedef int DWORD ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ EnumDependentServicesW (scalar_t__,int ,int *,int ,int *,int *) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int) ;
 int ProcessHeap ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ENUMERATE_DEPENDENTS ;
 int SERVICE_QUERY_CONFIG ;
 int SERVICE_QUERY_STATUS ;
 int SERVICE_STATE_ALL ;

LPENUM_SERVICE_STATUS
TV2_GetDependants(LPWSTR lpServiceName,
                  LPDWORD lpdwCount)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    LPENUM_SERVICE_STATUSW lpDependencies = ((void*)0);
    DWORD dwBytesNeeded;
    DWORD dwCount;


    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hService = OpenServiceW(hSCManager,
                                lpServiceName,
                                SERVICE_QUERY_STATUS | SERVICE_ENUMERATE_DEPENDENTS | SERVICE_QUERY_CONFIG);
        if (hService)
        {

            if (!EnumDependentServicesW(hService,
                                        SERVICE_STATE_ALL,
                                        ((void*)0),
                                        0,
                                        &dwBytesNeeded,
                                        &dwCount) &&
                GetLastError() == ERROR_MORE_DATA)
            {
                lpDependencies = (LPENUM_SERVICE_STATUSW)HeapAlloc(GetProcessHeap(),
                                                                  0,
                                                                  dwBytesNeeded);
                if (lpDependencies)
                {

                    if (EnumDependentServicesW(hService,
                                               SERVICE_STATE_ALL,
                                               lpDependencies,
                                               dwBytesNeeded,
                                               &dwBytesNeeded,
                                               &dwCount))
                    {

                        *lpdwCount = dwCount;
                    }
                    else
                    {
                        HeapFree(ProcessHeap,
                                 0,
                                 lpDependencies);

                        lpDependencies = ((void*)0);
                    }
                }
            }

            CloseServiceHandle(hService);
        }

        CloseServiceHandle(hSCManager);
    }

    return lpDependencies;
}
