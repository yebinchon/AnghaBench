
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ Selection; } ;
typedef TYPE_1__* PDATA ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int EnableWindow (int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_MINTEXT ;
 int IDC_SCREENS_LIST ;
 int IDC_SCREENS_SETTINGS ;
 int IDC_SCREENS_TESTSC ;
 int IDC_SCREENS_TIME ;
 int IDC_SCREENS_TIMEDELAY ;
 int IDC_SCREENS_USEPASSCHK ;
 int IDC_WAITTEXT ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static VOID
SelectionChanged(HWND hwndDlg, PDATA pData)
{
    HWND hwndCombo;
    BOOL bEnable;
    INT i;

    hwndCombo = GetDlgItem(hwndDlg, IDC_SCREENS_LIST);

    i = (INT)SendMessage(hwndCombo, CB_GETCURSEL, 0, 0);
    i = (INT)SendMessage(hwndCombo, CB_GETITEMDATA, i, 0);

    pData->Selection = i;

    bEnable = (i != 0);

    EnableWindow(GetDlgItem(hwndDlg, IDC_SCREENS_SETTINGS), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_SCREENS_TESTSC), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_SCREENS_USEPASSCHK), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_SCREENS_TIMEDELAY), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_SCREENS_TIME), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_WAITTEXT), bEnable);
    EnableWindow(GetDlgItem(hwndDlg, IDC_MINTEXT), bEnable);
}
