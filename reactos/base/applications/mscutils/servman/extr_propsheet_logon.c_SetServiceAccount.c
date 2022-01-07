
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_LOCK ;
typedef scalar_t__ SC_HANDLE ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ChangeServiceConfigW (scalar_t__,int ,int ,int ,int *,int *,int *,int *,int ,int ,int *) ;
 int CloseServiceHandle (scalar_t__) ;
 int FALSE ;
 int GetError () ;
 int LockServiceDatabase (scalar_t__) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int ) ;
 int SC_MANAGER_LOCK ;
 int SERVICE_CHANGE_CONFIG ;
 int SERVICE_NO_CHANGE ;
 int TRUE ;
 int UnlockServiceDatabase (int ) ;

__attribute__((used)) static
BOOL
SetServiceAccount(
    LPWSTR lpServiceName,
    DWORD dwServiceType,
    LPWSTR lpStartName,
    LPWSTR lpPassword)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    SC_LOCK scLock;
    BOOL bRet = FALSE;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_LOCK);
    if (hSCManager)
    {
        scLock = LockServiceDatabase(hSCManager);
        if (scLock)
        {
            hSc = OpenServiceW(hSCManager,
                               lpServiceName,
                               SERVICE_CHANGE_CONFIG);
            if (hSc)
            {
                if (ChangeServiceConfigW(hSc,
                                         dwServiceType,
                                         SERVICE_NO_CHANGE,
                                         SERVICE_NO_CHANGE,
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0),
                                         lpStartName,
                                         lpPassword,
                                         ((void*)0)))
                {
                    bRet = TRUE;
                }

                CloseServiceHandle(hSc);
            }

            UnlockServiceDatabase(scLock);
        }

        CloseServiceHandle(hSCManager);
    }

    if (!bRet)
        GetError();

    return bRet;
}
