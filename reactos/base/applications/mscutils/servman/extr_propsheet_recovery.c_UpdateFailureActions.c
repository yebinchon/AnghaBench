
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PRECOVERYDATA ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int CB_GETCURSEL ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,scalar_t__) ;
 scalar_t__ IDC_ADD_FAILCOUNT ;
 scalar_t__ IDC_FIRST_FAILURE ;
 scalar_t__ IDC_RESTART_OPTIONS ;
 scalar_t__ IDC_RESTART_TEXT1 ;
 scalar_t__ IDC_RESTART_TEXT2 ;
 scalar_t__ IDC_RUN_GROUPBOX ;
 scalar_t__ IDC_SUBSEQUENT_FAILURES ;
 scalar_t__ SendDlgItemMessageW (int ,scalar_t__,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static
VOID
UpdateFailureActions(
    HWND hwndDlg,
    PRECOVERYDATA pRecoveryData)
{
    INT id, index;
    BOOL bRestartService = FALSE;
    BOOL bRunProgram = FALSE;
    BOOL bRebootComputer = FALSE;

    for (id = IDC_FIRST_FAILURE; id <= IDC_SUBSEQUENT_FAILURES; id++)
    {
        index = SendDlgItemMessageW(hwndDlg,
                                    id,
                                    CB_GETCURSEL,
                                    0,
                                    0);
        switch (index)
        {
            case 1:
                bRestartService = TRUE;
                break;

            case 2:
                bRunProgram = TRUE;
                break;

            case 3:
                bRebootComputer = TRUE;
                break;
        }
    }

    for (id = IDC_RESTART_TEXT1; id <= IDC_RESTART_TEXT2; id++)
         EnableWindow(GetDlgItem(hwndDlg, id), bRestartService);

    for (id = IDC_RUN_GROUPBOX; id <= IDC_ADD_FAILCOUNT; id++)
         EnableWindow(GetDlgItem(hwndDlg, id), bRunProgram);

    EnableWindow(GetDlgItem(hwndDlg, IDC_RESTART_OPTIONS), bRebootComputer);
}
