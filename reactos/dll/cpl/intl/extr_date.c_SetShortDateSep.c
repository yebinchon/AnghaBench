
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int* PWSTR ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int IDC_SHRTDATESEP_COMBO ;
 int IDS_ERROR_SYMBOL_SEPARATE ;
 scalar_t__ MAX_SAMPLES_STR_SIZE ;
 int PrintErrorMsgBox (int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;
 int WM_GETTEXT ;
 scalar_t__ iswalnum (int) ;
 size_t wcslen (int*) ;

__attribute__((used)) static BOOL
SetShortDateSep(HWND hwndDlg, PWSTR pszShortDateSep)
{
    INT nSepStrSize;
    INT nSepCount;


    SendDlgItemMessageW(hwndDlg, IDC_SHRTDATESEP_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszShortDateSep);


    nSepStrSize = wcslen(pszShortDateSep);


    for (nSepCount = 0; nSepCount < nSepStrSize; nSepCount++)
    {
        if (iswalnum(pszShortDateSep[nSepCount]) || (pszShortDateSep[nSepCount] == L'\''))
        {
            PrintErrorMsgBox(IDS_ERROR_SYMBOL_SEPARATE);
            return FALSE;
        }
    }

    if (nSepStrSize == 0)
    {
        PrintErrorMsgBox(IDS_ERROR_SYMBOL_SEPARATE);
        return FALSE;
    }

    return TRUE;
}
