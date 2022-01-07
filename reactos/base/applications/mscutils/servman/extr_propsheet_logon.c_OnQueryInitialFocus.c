
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bLocalSystem; } ;
typedef TYPE_1__* PLOGONDATA ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int DWLP_MSGRESULT ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_LOGON_SYSTEMACCOUNT ;
 int IDC_LOGON_THISACCOUNT ;
 int SetWindowLongPtr (scalar_t__,int ,int ) ;
 int TRUE ;

__attribute__((used)) static
BOOL
OnQueryInitialFocus(
    HWND hwndDlg,
    PLOGONDATA pLogonData)
{
    HWND hwnd = GetDlgItem(hwndDlg, pLogonData->bLocalSystem ? IDC_LOGON_SYSTEMACCOUNT : IDC_LOGON_THISACCOUNT);

    SetWindowLongPtr(hwndDlg, DWLP_MSGRESULT, (LPARAM)hwnd);

    return TRUE;
}
