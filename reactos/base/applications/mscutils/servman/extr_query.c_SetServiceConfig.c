
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpDisplayName; int lpServiceStartName; int lpDependencies; scalar_t__ dwTagId; int lpLoadOrderGroup; int lpBinaryPathName; int dwErrorControl; int dwStartType; int dwServiceType; } ;
typedef int SC_LOCK ;
typedef scalar_t__ SC_HANDLE ;
typedef int LPWSTR ;
typedef TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef int BOOL ;


 scalar_t__ ChangeServiceConfigW (scalar_t__,int ,int ,int ,int ,int ,scalar_t__*,int ,int ,int ,int ) ;
 int CloseServiceHandle (scalar_t__) ;
 int FALSE ;
 int GetError () ;
 int LockServiceDatabase (scalar_t__) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int ) ;
 int SC_MANAGER_LOCK ;
 int SERVICE_CHANGE_CONFIG ;
 int TRUE ;
 int UnlockServiceDatabase (int ) ;

BOOL
SetServiceConfig(LPQUERY_SERVICE_CONFIG pServiceConfig,
                 LPWSTR lpServiceName,
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
                                         pServiceConfig->dwServiceType,
                                         pServiceConfig->dwStartType,
                                         pServiceConfig->dwErrorControl,
                                         pServiceConfig->lpBinaryPathName,
                                         pServiceConfig->lpLoadOrderGroup,
                                         pServiceConfig->dwTagId ? &pServiceConfig->dwTagId : ((void*)0),
                                         pServiceConfig->lpDependencies,
                                         pServiceConfig->lpServiceStartName,
                                         lpPassword,
                                         pServiceConfig->lpDisplayName))
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
