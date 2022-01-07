
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ServiceStatusProcess; int lpServiceName; } ;
typedef int SERVICE_STATUS_PROCESS ;
typedef int * SC_HANDLE ;
typedef int LPBYTE ;
typedef TYPE_1__ ENUM_SERVICE_STATUS_PROCESS ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 int FALSE ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int * OpenServiceW (int *,int ,int ) ;
 int QueryServiceStatusEx (int *,int ,int ,int,int *) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_QUERY_STATUS ;
 int TRUE ;

BOOL
UpdateServiceStatus(ENUM_SERVICE_STATUS_PROCESS* pService)
{
    SC_HANDLE hScm;
    BOOL bRet = FALSE;

    hScm = OpenSCManagerW(((void*)0),
                          ((void*)0),
                          SC_MANAGER_ENUMERATE_SERVICE);
    if (hScm != ((void*)0))
    {
        SC_HANDLE hService;

        hService = OpenServiceW(hScm,
                                pService->lpServiceName,
                                SERVICE_QUERY_STATUS);
        if (hService)
        {
            DWORD size;

            QueryServiceStatusEx(hService,
                                 SC_STATUS_PROCESS_INFO,
                                 (LPBYTE)&pService->ServiceStatusProcess,
                                 sizeof(SERVICE_STATUS_PROCESS),
                                 &size);

            CloseServiceHandle(hService);
            bRet = TRUE;
        }

        CloseServiceHandle(hScm);
    }

    return bRet;
}
