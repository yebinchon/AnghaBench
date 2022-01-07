
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_5__ {void* hConn; int hGeneralPage; void* hLogon; } ;
typedef TYPE_1__* PINFO ;
typedef int LONG_PTR ;
typedef int HWND ;


 int FillServerAddressCombo (TYPE_1__*) ;
 int GWLP_USERDATA ;
 int IDC_CONNICON ;
 int IDC_LOGONICON ;
 int IDI_CONN ;
 int IDI_LOGON ;
 int IMAGE_ICON ;
 int LR_DEFAULTCOLOR ;
 void* LoadImageW (int ,int ,int ,int,int,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int ReLoadGeneralPage (TYPE_1__*) ;
 int STM_SETICON ;
 int SWP_NOACTIVATE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowPos (int ,int *,int,int,int ,int ,int) ;
 int hInst ;

__attribute__((used)) static VOID
GeneralOnInit(HWND hwnd,
              PINFO pInfo)
{
    SetWindowLongPtrW(hwnd,
                      GWLP_USERDATA,
                      (LONG_PTR)pInfo);

    pInfo->hGeneralPage = hwnd;

    SetWindowPos(pInfo->hGeneralPage,
                 ((void*)0),
                 2,
                 22,
                 0,
                 0,
                 SWP_NOACTIVATE | SWP_NOOWNERZORDER | SWP_NOSIZE | SWP_NOZORDER);

    pInfo->hLogon = LoadImageW(hInst,
                               MAKEINTRESOURCEW(IDI_LOGON),
                               IMAGE_ICON,
                               32,
                               32,
                               LR_DEFAULTCOLOR);
    if (pInfo->hLogon)
    {
        SendDlgItemMessageW(pInfo->hGeneralPage,
                            IDC_LOGONICON,
                            STM_SETICON,
                            (WPARAM)pInfo->hLogon,
                            0);
    }

    pInfo->hConn = LoadImageW(hInst,
                              MAKEINTRESOURCEW(IDI_CONN),
                              IMAGE_ICON,
                              32,
                              32,
                              LR_DEFAULTCOLOR);
    if (pInfo->hConn)
    {
        SendDlgItemMessageW(pInfo->hGeneralPage,
                            IDC_CONNICON,
                            STM_SETICON,
                            (WPARAM)pInfo->hConn,
                            0);
    }

    FillServerAddressCombo(pInfo);
    ReLoadGeneralPage(pInfo);
}
