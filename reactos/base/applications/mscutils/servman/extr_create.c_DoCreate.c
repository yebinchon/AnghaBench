
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Description; int ServiceName; int BinPath; int DisplayName; } ;
typedef scalar_t__ SC_HANDLE ;
typedef TYPE_1__* PCREATE_DATA ;
typedef int LPWSTR ;
typedef int BOOL ;


 scalar_t__ AllocAndLoadString (int *,int ,int ) ;
 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ CreateServiceW (scalar_t__,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int DisplayString (int ) ;
 int FALSE ;
 int IDS_CREATE_SUCCESS ;
 int LocalFree (int ) ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_NORMAL ;
 int SERVICE_WIN32_OWN_PROCESS ;
 int SetServiceDescription (int ,int ) ;
 int TRUE ;
 int hInstance ;

__attribute__((used)) static BOOL
DoCreate(PCREATE_DATA Data)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    BOOL bRet = FALSE;


    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hSc = CreateServiceW(hSCManager,
                             Data->ServiceName,
                             Data->DisplayName,
                             SERVICE_ALL_ACCESS,
                             SERVICE_WIN32_OWN_PROCESS,
                             SERVICE_DEMAND_START,
                             SERVICE_ERROR_NORMAL,
                             Data->BinPath,
                             ((void*)0),
                             ((void*)0),
                             ((void*)0),
                             ((void*)0),
                             ((void*)0));

        if (hSc)
        {
            LPWSTR lpSuccess;



            SetServiceDescription(Data->ServiceName,
                                  Data->Description);


            if (AllocAndLoadString(&lpSuccess,
                                   hInstance,
                                   IDS_CREATE_SUCCESS))
            {
                DisplayString(lpSuccess);

                LocalFree(lpSuccess);
            }

            CloseServiceHandle(hSc);
            bRet = TRUE;
        }

        CloseServiceHandle(hSCManager);
    }

    return bRet;
}
