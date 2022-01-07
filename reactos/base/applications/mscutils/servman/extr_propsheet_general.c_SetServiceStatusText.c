
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_7__ {TYPE_2__* pService; } ;
struct TYPE_5__ {scalar_t__ dwCurrentState; } ;
struct TYPE_6__ {TYPE_1__ ServiceStatusProcess; } ;
typedef TYPE_3__* PSERVICEPROPSHEET ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;


 scalar_t__ AllocAndLoadString (scalar_t__*,int ,int ) ;
 int IDC_SERV_STATUS ;
 int IDS_SERVICES_STARTED ;
 int IDS_SERVICES_STOPPED ;
 int LocalFree (scalar_t__) ;
 scalar_t__ SERVICE_RUNNING ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int hInstance ;

__attribute__((used)) static VOID
SetServiceStatusText(PSERVICEPROPSHEET dlgInfo,
                     HWND hwndDlg)
{
    LPWSTR lpStatus;
    UINT id;

    if (dlgInfo->pService->ServiceStatusProcess.dwCurrentState == SERVICE_RUNNING)
    {
        id = IDS_SERVICES_STARTED;
    }
    else
    {
        id = IDS_SERVICES_STOPPED;
    }

    if (AllocAndLoadString(&lpStatus,
                           hInstance,
                           id))
    {
        SendDlgItemMessageW(hwndDlg,
                            IDC_SERV_STATUS,
                            WM_SETTEXT,
                            0,
                            (LPARAM)lpStatus);
        LocalFree(lpStatus);
    }
}
