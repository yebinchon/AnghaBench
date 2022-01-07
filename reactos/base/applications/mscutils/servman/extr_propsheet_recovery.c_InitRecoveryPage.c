
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 scalar_t__ AllocAndLoadString (scalar_t__*,int ,scalar_t__) ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,scalar_t__) ;
 int IDC_FIRST_FAILURE ;
 int IDC_RESET_TIME ;
 scalar_t__ IDC_RESTART_OPTIONS ;
 scalar_t__ IDC_RESTART_TEXT1 ;
 int IDC_RESTART_TIME ;
 int IDC_SECOND_FAILURE ;
 int IDC_SUBSEQUENT_FAILURES ;
 scalar_t__ IDS_NO_ACTION ;
 scalar_t__ IDS_RESTART_COMPUTER ;
 int LocalFree (scalar_t__) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int hInstance ;

__attribute__((used)) static
VOID
InitRecoveryPage(
    HWND hwndDlg)
{
    LPWSTR lpAction;
    INT id;

    for (id = IDS_NO_ACTION; id <= IDS_RESTART_COMPUTER; id++)
    {
        if (AllocAndLoadString(&lpAction,
                               hInstance,
                               id))
        {
            SendDlgItemMessageW(hwndDlg,
                                IDC_FIRST_FAILURE,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            SendDlgItemMessageW(hwndDlg,
                                IDC_SECOND_FAILURE,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            SendDlgItemMessageW(hwndDlg,
                                IDC_SUBSEQUENT_FAILURES,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            LocalFree(lpAction);
        }
    }

    SendDlgItemMessageW(hwndDlg,
                        IDC_FIRST_FAILURE,
                        CB_SETCURSEL,
                        0,
                        0);

    SendDlgItemMessageW(hwndDlg,
                        IDC_SECOND_FAILURE,
                        CB_SETCURSEL,
                        0,
                        0);

    SendDlgItemMessageW(hwndDlg,
                        IDC_SUBSEQUENT_FAILURES,
                        CB_SETCURSEL,
                        0,
                        0);

    SendDlgItemMessageW(hwndDlg,
                        IDC_RESET_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)L"0");

    SendDlgItemMessageW(hwndDlg,
                        IDC_RESTART_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)L"1");

    for (id = IDC_RESTART_TEXT1; id <= IDC_RESTART_OPTIONS; id++)
        EnableWindow(GetDlgItem(hwndDlg, id), FALSE);
}
