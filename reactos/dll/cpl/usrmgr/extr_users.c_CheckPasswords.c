
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TCHAR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetDlgItemText (int ,int ,int *,int) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int ,int ,int ,int) ;
 int PWLEN ;
 int TEXT (char*) ;
 int TRUE ;
 scalar_t__ _tcscmp (int *,int *) ;

__attribute__((used)) static BOOL
CheckPasswords(HWND hwndDlg,
               INT nIdDlgItem1,
               INT nIdDlgItem2)
{
    TCHAR szPassword1[PWLEN];
    TCHAR szPassword2[PWLEN];
    UINT uLen1;
    UINT uLen2;

    uLen1 = GetDlgItemText(hwndDlg, nIdDlgItem1, szPassword1, PWLEN);
    uLen2 = GetDlgItemText(hwndDlg, nIdDlgItem2, szPassword2, PWLEN);


    if (uLen1 != uLen2 || _tcscmp(szPassword1, szPassword2) != 0)
    {
        MessageBox(hwndDlg,
                   TEXT("The passwords you entered are not the same!"),
                   TEXT("ERROR"),
                   MB_OK | MB_ICONERROR);
        return FALSE;
    }

    return TRUE;
}
