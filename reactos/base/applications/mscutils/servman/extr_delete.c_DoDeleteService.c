
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pCurrentService; } ;
struct TYPE_4__ {int lpServiceName; } ;
typedef scalar_t__ SC_HANDLE ;
typedef TYPE_2__* PMAIN_WND_INFO ;
typedef int LPWSTR ;
typedef int HWND ;
typedef int BOOL ;


 scalar_t__ AllocAndLoadString (int *,int ,int ) ;
 int CloseServiceHandle (scalar_t__) ;
 int DELETE ;
 scalar_t__ DeleteService (scalar_t__) ;
 int DisplayString (int ) ;
 int FALSE ;
 int IDS_DELETE_SUCCESS ;
 int LocalFree (int ) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 scalar_t__ OpenServiceW (scalar_t__,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int TRUE ;
 int hInstance ;

__attribute__((used)) static BOOL
DoDeleteService(PMAIN_WND_INFO Info,
                HWND hDlg)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    BOOL bRet = FALSE;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hSc = OpenServiceW(hSCManager,
                           Info->pCurrentService->lpServiceName,
                           DELETE);
        if (hSc)
        {
            if (DeleteService(hSc))
            {
                LPWSTR lpSuccess;


                if (AllocAndLoadString(&lpSuccess,
                                       hInstance,
                                       IDS_DELETE_SUCCESS))
                {
                    DisplayString(lpSuccess);

                    LocalFree(lpSuccess);
                }

                bRet = TRUE;
            }

            CloseServiceHandle(hSc);
        }

        CloseServiceHandle(hSCManager);
    }

    return bRet;
}
