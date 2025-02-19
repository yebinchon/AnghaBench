
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_14__ {scalar_t__ lpBinaryPathName; } ;
struct TYPE_13__ {TYPE_2__* Info; TYPE_1__* pService; } ;
struct TYPE_12__ {scalar_t__ bIsUserAnAdmin; } ;
struct TYPE_11__ {scalar_t__ lpServiceName; scalar_t__ lpDisplayName; } ;
typedef TYPE_3__* PSERVICEPROPSHEET ;
typedef TYPE_4__* LPWSTR ;
typedef TYPE_4__* LPQUERY_SERVICE_CONFIG ;
typedef int LPARAM ;
typedef int HWND ;


 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 TYPE_4__* GetServiceConfig (scalar_t__) ;
 TYPE_4__* GetServiceDescription (scalar_t__) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 int IDC_DESCRIPTION ;
 int IDC_DISP_NAME ;
 int IDC_EDIT ;
 int IDC_EXEPATH ;
 int IDC_SERV_NAME ;
 int ProcessHeap ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetServiceStatusText (TYPE_3__*,int ) ;
 int SetStartupType (scalar_t__,int ) ;
 int TRUE ;
 int WM_SETTEXT ;

__attribute__((used)) static VOID
InitGeneralPage(PSERVICEPROPSHEET dlgInfo,
                HWND hwndDlg)
{
    LPQUERY_SERVICE_CONFIG pServiceConfig;
    LPWSTR lpDescription;


    SendDlgItemMessageW(hwndDlg,
                        IDC_SERV_NAME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)dlgInfo->pService->lpServiceName);


    SendDlgItemMessageW(hwndDlg,
                        IDC_DISP_NAME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)dlgInfo->pService->lpDisplayName);


    if ((lpDescription = GetServiceDescription(dlgInfo->pService->lpServiceName)))
    {
        SendDlgItemMessageW(hwndDlg,
                            IDC_DESCRIPTION,
                            WM_SETTEXT,
                            0,
                            (LPARAM)lpDescription);

        HeapFree(ProcessHeap,
                 0,
                 lpDescription);
    }

    pServiceConfig = GetServiceConfig(dlgInfo->pService->lpServiceName);
    if (pServiceConfig)
    {
        SendDlgItemMessageW(hwndDlg,
                            IDC_EXEPATH,
                            WM_SETTEXT,
                            0,
                            (LPARAM)pServiceConfig->lpBinaryPathName);
        HeapFree(ProcessHeap,
                 0,
                 pServiceConfig);
    }



    SetStartupType(dlgInfo->pService->lpServiceName, hwndDlg);

    SetServiceStatusText(dlgInfo,
                         hwndDlg);

    if (dlgInfo->Info->bIsUserAnAdmin)
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_EDIT), TRUE);
    }
}
