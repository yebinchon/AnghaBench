
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WCHAR ;
typedef int* PWSTR ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int* FindDateSep (int*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int*) ;
 int IDC_SHRTDATEFMT_COMBO ;
 int IDC_SHRTDATESEP_COMBO ;
 int IDS_ERROR_SYMBOL_FORMAT_SHORT ;
 int MAX_SAMPLES_STR_SIZE ;
 int PrintErrorMsgBox (int ) ;
 int* ReplaceSubStr (int*,int*,int*) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;
 int WM_GETTEXT ;
 int isDateCompAl (int) ;
 scalar_t__ iswalnum (int) ;
 int wcscpy (int*,int*) ;
 size_t wcslen (int*) ;

__attribute__((used)) static BOOL
SetShortDateFormat(HWND hwndDlg, PWSTR pszShortDateFmt)
{
    WCHAR szShortDateSep[MAX_SAMPLES_STR_SIZE];
    WCHAR szFoundDateSep[MAX_SAMPLES_STR_SIZE];
    PWSTR pszResultStr;
    PWSTR pszFoundSep;
    BOOL OpenApostFlg = FALSE;
    INT nFmtStrSize;
    INT nDateCompCount;


    SendDlgItemMessageW(hwndDlg, IDC_SHRTDATEFMT_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszShortDateFmt);


    SendDlgItemMessageW(hwndDlg, IDC_SHRTDATESEP_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)szShortDateSep);


    nFmtStrSize = wcslen(pszShortDateFmt);


    for (nDateCompCount = 0; nDateCompCount < nFmtStrSize; nDateCompCount++)
    {
        if (pszShortDateFmt[nDateCompCount] == L'\'')
        {
            OpenApostFlg = !OpenApostFlg;
        }

        if (iswalnum(pszShortDateFmt[nDateCompCount]) &&
            !isDateCompAl(pszShortDateFmt[nDateCompCount]) &&
            !OpenApostFlg)
        {
            PrintErrorMsgBox(IDS_ERROR_SYMBOL_FORMAT_SHORT);
            return FALSE;
        }
    }

    if (OpenApostFlg || nFmtStrSize == 0)
    {
        PrintErrorMsgBox(IDS_ERROR_SYMBOL_FORMAT_SHORT);
        return FALSE;
    }

    pszFoundSep = FindDateSep(pszShortDateFmt);
    if (pszFoundSep != ((void*)0))
    {

        wcscpy(szFoundDateSep, pszFoundSep);
        pszResultStr = ReplaceSubStr(pszShortDateFmt, szShortDateSep, szFoundDateSep);
        if (pszResultStr != ((void*)0))
        {
            wcscpy(pszShortDateFmt, pszResultStr);
            HeapFree(GetProcessHeap(), 0, pszResultStr);
        }

        HeapFree(GetProcessHeap(), 0, pszFoundSep);
    }

    return TRUE;
}
