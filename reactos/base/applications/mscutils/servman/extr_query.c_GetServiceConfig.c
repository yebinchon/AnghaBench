
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SC_HANDLE ;
typedef int LPWSTR ;
typedef int * LPQUERY_SERVICE_CONFIGW ;
typedef int * LPQUERY_SERVICE_CONFIG ;
typedef int DWORD ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int ) ;
 int QueryServiceConfigW (scalar_t__,int *,int ,int *) ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_QUERY_CONFIG ;

LPQUERY_SERVICE_CONFIG
GetServiceConfig(LPWSTR lpServiceName)
{
    LPQUERY_SERVICE_CONFIGW lpServiceConfig = ((void*)0);
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    DWORD dwBytesNeeded;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_CONNECT);
    if (hSCManager)
    {
        hService = OpenServiceW(hSCManager,
                                lpServiceName,
                                SERVICE_QUERY_CONFIG);
        if (hService)
        {
            if (!QueryServiceConfigW(hService,
                                     ((void*)0),
                                     0,
                                     &dwBytesNeeded))
            {
                if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
                {
                    lpServiceConfig = (LPQUERY_SERVICE_CONFIG)HeapAlloc(GetProcessHeap(),
                                                                        0,
                                                                        dwBytesNeeded);
                    if (lpServiceConfig)
                    {
                        if (!QueryServiceConfigW(hService,
                                                lpServiceConfig,
                                                dwBytesNeeded,
                                                &dwBytesNeeded))
                        {
                            HeapFree(GetProcessHeap(),
                                     0,
                                     lpServiceConfig);
                            lpServiceConfig = ((void*)0);
                        }
                    }
                }
            }

            CloseServiceHandle(hService);
        }

        CloseServiceHandle(hSCManager);
    }

    return lpServiceConfig;
}
