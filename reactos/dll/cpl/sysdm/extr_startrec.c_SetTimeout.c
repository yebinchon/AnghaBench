
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_STRRECLISTEDIT ;
 int IDC_STRRECLISTUPDWN ;
 scalar_t__ MAKELONG (short,int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;
 int UDM_SETPOS ;
 int UDM_SETRANGE ;

__attribute__((used)) static VOID
SetTimeout(HWND hwndDlg, INT Timeout)
{
    if (Timeout == 0)
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_STRRECLISTUPDWN), FALSE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_STRRECLISTEDIT), FALSE);
    }
    else
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_STRRECLISTUPDWN), TRUE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_STRRECLISTEDIT), TRUE);
    }
    SendDlgItemMessageW(hwndDlg, IDC_STRRECLISTUPDWN, UDM_SETRANGE, (WPARAM) 0, (LPARAM) MAKELONG((short) 999, 0));
    SendDlgItemMessageW(hwndDlg, IDC_STRRECLISTUPDWN, UDM_SETPOS, (WPARAM) 0, (LPARAM) MAKELONG((short) Timeout, 0));
}
