
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpDescription; } ;
typedef TYPE_1__ SERVICE_DESCRIPTION ;
typedef int SC_LOCK ;
typedef scalar_t__ SC_HANDLE ;
typedef int LPWSTR ;
typedef int BOOL ;


 scalar_t__ ChangeServiceConfig2W (scalar_t__,int ,TYPE_1__*) ;
 int CloseServiceHandle (scalar_t__) ;
 int FALSE ;
 int GetError () ;
 int LockServiceDatabase (scalar_t__) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int ) ;
 int SC_MANAGER_LOCK ;
 int SERVICE_CHANGE_CONFIG ;
 int SERVICE_CONFIG_DESCRIPTION ;
 int TRUE ;
 int UnlockServiceDatabase (int ) ;

BOOL
SetServiceDescription(LPWSTR lpServiceName,
                      LPWSTR lpDescription)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    SC_LOCK scLock;
    SERVICE_DESCRIPTION ServiceDescription;
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
                ServiceDescription.lpDescription = lpDescription;

                if (ChangeServiceConfig2W(hSc,
                                          SERVICE_CONFIG_DESCRIPTION,
                                          &ServiceDescription))
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
