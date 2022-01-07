
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
 int IDC_LONGDATEFMT_COMBO ;
 int IDS_ERROR_SYMBOL_FORMAT_LONG ;
 scalar_t__ MAX_SAMPLES_STR_SIZE ;
 int PrintErrorMsgBox (int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;
 int WM_GETTEXT ;
 int isDateCompAl (int) ;
 scalar_t__ iswalnum (int) ;
 size_t wcslen (int*) ;

__attribute__((used)) static BOOL
SetLongDateFormat(HWND hwndDlg, PWSTR pszLongDateFmt)
{
    BOOL OpenApostFlg = FALSE;
    INT nFmtStrSize;
    INT nDateCompCount;


    SendDlgItemMessageW(hwndDlg, IDC_LONGDATEFMT_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszLongDateFmt);


    nFmtStrSize = wcslen(pszLongDateFmt);


    for (nDateCompCount = 0; nDateCompCount < nFmtStrSize; nDateCompCount++)
    {
        if (pszLongDateFmt[nDateCompCount] == L'\'')
        {
            OpenApostFlg = !OpenApostFlg;
        }

        if (iswalnum(pszLongDateFmt[nDateCompCount]) &&
            !isDateCompAl(pszLongDateFmt[nDateCompCount]) &&
            !OpenApostFlg)
        {
            PrintErrorMsgBox(IDS_ERROR_SYMBOL_FORMAT_LONG);
            return FALSE;
        }
    }

    if (OpenApostFlg || nFmtStrSize == 0)
    {
        PrintErrorMsgBox(IDS_ERROR_SYMBOL_FORMAT_LONG);
        return FALSE;
    }

    return TRUE;
}
