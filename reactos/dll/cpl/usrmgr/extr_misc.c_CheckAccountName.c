
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetDlgItemText (int ,int ,int *,int) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int ,int ,int ,int) ;
 int TEXT (char*) ;
 int TRUE ;
 scalar_t__ _tcslen (int *) ;
 int * _tcspbrk (int *,int ) ;

BOOL
CheckAccountName(HWND hwndDlg,
                 INT nIdDlgItem,
                 LPTSTR lpAccountName)
{
    TCHAR szAccountName[256];
    UINT uLen;

    if (lpAccountName)
        uLen = _tcslen(lpAccountName);
    else
        uLen = GetDlgItemText(hwndDlg, nIdDlgItem, szAccountName, 256);


    if (uLen > 0 &&
        _tcspbrk((lpAccountName) ? lpAccountName : szAccountName, TEXT("\"*+,/\\:;<=>?[]|")) != ((void*)0))
    {
        MessageBox(hwndDlg,
                   TEXT("The account name you entered is invalid! An account name must not contain the following characters: *+,/:;<=>?[\\]|"),
                   TEXT("ERROR"),
                   MB_OK | MB_ICONERROR);
        return FALSE;
    }

    return TRUE;
}
