
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ bInitialized; char* szAccountName; char* szPassword1; char* szPassword2; int bLocalSystem; scalar_t__ nInteractive; } ;
typedef TYPE_1__* PLOGONDATA ;
typedef int HWND ;
typedef int BOOL ;


 int BM_GETCHECK ;
 int BM_SETCHECK ;
 scalar_t__ BST_UNCHECKED ;
 int EnableWindow (int ,int) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetDlgItemText (int ,int ,char*,int) ;
 int IDC_LOGON_ACCOUNTNAME ;
 int IDC_LOGON_INTERACTIVE ;
 int IDC_LOGON_PASSWORD1 ;
 int IDC_LOGON_PASSWORD2 ;
 int IDC_LOGON_PW1TEXT ;
 int IDC_LOGON_PW2TEXT ;
 int IDC_LOGON_SEARCH ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetDlgItemText (int ,int ,char*) ;
 scalar_t__ TRUE ;

__attribute__((used)) static
VOID
SetControlStates(
    HWND hwndDlg,
    PLOGONDATA pLogonData,
    BOOL bLocalSystem)
{
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_INTERACTIVE), bLocalSystem);
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_ACCOUNTNAME), !bLocalSystem);
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_SEARCH), FALSE );
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_PW1TEXT), !bLocalSystem);
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_PASSWORD1), !bLocalSystem);
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_PW2TEXT), !bLocalSystem);
    EnableWindow(GetDlgItem(hwndDlg, IDC_LOGON_PASSWORD2), !bLocalSystem);

    if (bLocalSystem)
    {
        SendDlgItemMessageW(hwndDlg, IDC_LOGON_INTERACTIVE, BM_SETCHECK, (WPARAM)pLogonData->nInteractive, 0);

        if (pLogonData->bInitialized == TRUE)
        {
            GetDlgItemText(hwndDlg, IDC_LOGON_ACCOUNTNAME, pLogonData->szAccountName, 64);
            GetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD1, pLogonData->szPassword1, 64);
            GetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD2, pLogonData->szPassword2, 64);
        }

        SetDlgItemText(hwndDlg, IDC_LOGON_ACCOUNTNAME, L"");
        SetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD1, L"");
        SetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD2, L"");
    }
    else
    {
        if (pLogonData->bInitialized == TRUE)
            pLogonData->nInteractive = SendDlgItemMessageW(hwndDlg, IDC_LOGON_INTERACTIVE, BM_GETCHECK, 0, 0);
        SendDlgItemMessageW(hwndDlg, IDC_LOGON_INTERACTIVE, BM_SETCHECK, (WPARAM)BST_UNCHECKED, 0);

        SetDlgItemText(hwndDlg, IDC_LOGON_ACCOUNTNAME, pLogonData->szAccountName);
        SetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD1, pLogonData->szPassword1);
        SetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD2, pLogonData->szPassword2);
    }

    pLogonData->bLocalSystem = bLocalSystem;
}
