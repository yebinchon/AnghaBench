
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int dwStartType; } ;
typedef scalar_t__ LPWSTR ;
typedef TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 scalar_t__ AllocAndLoadString (scalar_t__*,int ,scalar_t__) ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int GetDlgItem (int ,int ) ;
 TYPE_1__* GetServiceConfig (scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDC_START_TYPE ;
 scalar_t__ IDS_SERVICES_AUTO ;
 scalar_t__ IDS_SERVICES_DIS ;
 int LocalFree (scalar_t__) ;
 int ProcessHeap ;



 int SendMessageW (int ,int ,int,int ) ;
 int hInstance ;

__attribute__((used)) static VOID
SetStartupType(LPWSTR lpServiceName,
               HWND hwndDlg)
{
    HWND hList;
    LPQUERY_SERVICE_CONFIG pServiceConfig;
    LPWSTR lpBuf;
    DWORD StartUp = 0;
    UINT i;

    hList = GetDlgItem(hwndDlg, IDC_START_TYPE);

    for (i = IDS_SERVICES_AUTO; i <= IDS_SERVICES_DIS; i++)
    {
        if (AllocAndLoadString(&lpBuf,
                               hInstance,
                               i))
        {
            SendMessageW(hList,
                         CB_ADDSTRING,
                         0,
                         (LPARAM)lpBuf);
            LocalFree(lpBuf);
        }
    }

    pServiceConfig = GetServiceConfig(lpServiceName);

    if (pServiceConfig)
    {
        switch (pServiceConfig->dwStartType)
        {
            case 130: StartUp = 0; break;
            case 129: StartUp = 1; break;
            case 128: StartUp = 2; break;
        }

        SendMessageW(hList,
                     CB_SETCURSEL,
                     StartUp,
                     0);

        HeapFree(ProcessHeap,
                 0,
                 pServiceConfig);
    }
}
