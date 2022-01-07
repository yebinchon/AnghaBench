
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {int OSConfigurationCount; int TimeOut; scalar_t__ szDefaultPos; int szDefaultOS; int UseBootIni; } ;
struct TYPE_4__ {scalar_t__ cx; } ;
typedef int SIZE_T ;
typedef TYPE_1__ SIZE ;
typedef scalar_t__ LRESULT ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int LONG ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef int FILE ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (int*) ;
 int EnableWindow (int ,int ) ;
 int ExpandEnvironmentStringsW (int ,int *,int) ;
 int FALSE ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetTextExtentPoint32W (int ,int*,int,TYPE_1__*) ;
 int IDC_BTN_MOVE_DOWN_BOOT_OPTION ;
 int IDC_BTN_MOVE_UP_BOOT_OPTION ;
 int IDC_BTN_SET_DEFAULT_BOOT ;
 int IDC_LIST_BOX ;
 int IDC_TXT_BOOT_TIMEOUT ;
 scalar_t__ LB_ERR ;
 scalar_t__ ListBox_AddString (int ,int*) ;
 scalar_t__ ListBox_FindString (int ,int,int ) ;
 scalar_t__ ListBox_GetHorizontalExtent (int ) ;
 int ListBox_SetCurSel (int ,scalar_t__) ;
 int ListBox_SetHorizontalExtent (int ,int ) ;
 int ListBox_SetItemData (int ,scalar_t__,int) ;
 scalar_t__ MemAlloc (int ,int) ;
 int MemFree (int *) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,int ,int ) ;
 TYPE_2__ Settings ;
 int TRUE ;
 int WM_GETFONT ;
 int _SH_DENYWR ;
 int _wcsnicmp (int*,char*,int) ;
 int * _wfsopen (int *,char*,int ) ;
 int _wtoi (int*) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ fgetws (int*,int ,int *) ;
 int max (int ,scalar_t__) ;
 int wcscpy (int ,int*) ;
 int wcslen (int*) ;

__attribute__((used)) static BOOL
LoadIniFile(HWND hDlg,
            LPCWSTR lpszIniFile)
{
    DWORD dwNumOfChars;
    LPWSTR lpszFileName;
    FILE* file;

    WCHAR szBuffer[512];
    HWND hDlgCtrl;
    SIZE_T length;
    LRESULT pos;

    SIZE size;
    LONG horzExt;

    HDC hDC;
    HFONT hFont, hOldFont;





    dwNumOfChars = ExpandEnvironmentStringsW(lpszIniFile, ((void*)0), 0);
    lpszFileName = (LPWSTR)MemAlloc(0, dwNumOfChars * sizeof(WCHAR));
    ExpandEnvironmentStringsW(lpszIniFile, lpszFileName, dwNumOfChars);

    file = _wfsopen(lpszFileName, L"rt", _SH_DENYWR);
    MemFree(lpszFileName);

    if (!file) return FALSE;

    hDlgCtrl = GetDlgItem(hDlg, IDC_LIST_BOX);

    hDC = GetDC(hDlgCtrl);
    hFont = (HFONT)SendMessageW(hDlgCtrl, WM_GETFONT, 0, 0);
    hOldFont = (HFONT)SelectObject(hDC, hFont);

    while (!feof(file) && fgetws(szBuffer, ARRAYSIZE(szBuffer), file))
    {
        length = wcslen(szBuffer);
        if (length > 1)
        {

            szBuffer[length-1] = szBuffer[length] = L'\0';

            pos = ListBox_AddString(hDlgCtrl, szBuffer);

            GetTextExtentPoint32W(hDC, szBuffer, (int)wcslen(szBuffer), &size);
            horzExt = max((LONG)ListBox_GetHorizontalExtent(hDlgCtrl), size.cx + 5);
            ListBox_SetHorizontalExtent(hDlgCtrl, horzExt);

            if (szBuffer[0] == L'[')
                continue;

            if (!_wcsnicmp(szBuffer, L"timeout=", 8))
            {
                Settings.TimeOut = _wtoi(&szBuffer[8]);
                continue;
            }

            if (!_wcsnicmp(szBuffer, L"default=", 8))
            {
                wcscpy(Settings.szDefaultOS, &szBuffer[8]);
                continue;
            }
            if (pos != LB_ERR)
                ListBox_SetItemData(hDlgCtrl, pos, 1);

            Settings.OSConfigurationCount++;
        }
    }

    SelectObject(hDC, hOldFont);
    ReleaseDC(hDlgCtrl, hDC);

    fclose(file);
    Settings.UseBootIni = TRUE;





    pos = ListBox_FindString(hDlgCtrl, 3, Settings.szDefaultOS);
    if (pos != LB_ERR)
    {
        Settings.szDefaultPos = (ULONG)pos;
        ListBox_SetCurSel(hDlgCtrl, pos);

    }

    SetDlgItemInt(hDlg, IDC_TXT_BOOT_TIMEOUT, Settings.TimeOut, FALSE);
    if (Settings.OSConfigurationCount < 2)
    {
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_SET_DEFAULT_BOOT), FALSE);
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_MOVE_UP_BOOT_OPTION), FALSE);
        EnableWindow(GetDlgItem(hDlg, IDC_BTN_MOVE_DOWN_BOOT_OPTION), FALSE);
    }

    return TRUE;
}
