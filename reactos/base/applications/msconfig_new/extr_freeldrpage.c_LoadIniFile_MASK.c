#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {int OSConfigurationCount; int /*<<< orphan*/  TimeOut; scalar_t__ szDefaultPos; int /*<<< orphan*/  szDefaultOS; int /*<<< orphan*/  UseBootIni; } ;
struct TYPE_4__ {scalar_t__ cx; } ;
typedef  int SIZE_T ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_BTN_MOVE_DOWN_BOOT_OPTION ; 
 int /*<<< orphan*/  IDC_BTN_MOVE_UP_BOOT_OPTION ; 
 int /*<<< orphan*/  IDC_BTN_SET_DEFAULT_BOOT ; 
 int /*<<< orphan*/  IDC_LIST_BOX ; 
 int /*<<< orphan*/  IDC_TXT_BOOT_TIMEOUT ; 
 scalar_t__ LB_ERR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ Settings ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_GETFONT ; 
 int /*<<< orphan*/  _SH_DENYWR ; 
 int /*<<< orphan*/  FUNC18 (int*,char*,int) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int*) ; 
 int FUNC26 (int*) ; 

__attribute__((used)) static BOOL
FUNC27(HWND hDlg,
            LPCWSTR lpszIniFile)
{
    DWORD  dwNumOfChars;
    LPWSTR lpszFileName;
    FILE*  file;

    WCHAR szBuffer[512];
    HWND hDlgCtrl;
    SIZE_T length;
    LRESULT pos;

    SIZE size;
    LONG horzExt;

    HDC hDC;
    HFONT hFont, hOldFont;

    /*
     * Open for read + write (without file creation if it didn't already exist)
     * of a read-only text stream.
     */
    dwNumOfChars = FUNC2(lpszIniFile, NULL, 0);
    lpszFileName = (LPWSTR)FUNC12(0, dwNumOfChars * sizeof(WCHAR));
    FUNC2(lpszIniFile, lpszFileName, dwNumOfChars);

    file = FUNC19(lpszFileName, L"rt", _SH_DENYWR); // r+t <-- read write text ; rt <-- read text
    FUNC13(lpszFileName);

    if (!file) return FALSE;

    hDlgCtrl = FUNC4(hDlg, IDC_LIST_BOX);

    hDC      = FUNC3(hDlgCtrl);
    hFont    = (HFONT)FUNC16(hDlgCtrl, WM_GETFONT, 0, 0);
    hOldFont = (HFONT)FUNC15(hDC, hFont);

    while (!FUNC22(file) && FUNC23(szBuffer, FUNC0(szBuffer), file))
    {
        length = FUNC26(szBuffer);
        if (length > 1)
        {
            /* Remove \r\n */
            szBuffer[length-1] = szBuffer[length] = L'\0';

            pos = FUNC6(hDlgCtrl, szBuffer);

            FUNC5(hDC, szBuffer, (int)FUNC26(szBuffer), &size);
            horzExt = FUNC24((LONG)FUNC8(hDlgCtrl), size.cx + 5); // 5 to have a little room between the text and the end of the list box.
            FUNC10(hDlgCtrl, horzExt);

            if (szBuffer[0] == L'[')
                continue;

            if (!FUNC18(szBuffer, L"timeout=", 8))
            {
                Settings.TimeOut = FUNC20(&szBuffer[8]);
                continue;
            }

            if (!FUNC18(szBuffer, L"default=", 8))
            {
                FUNC25(Settings.szDefaultOS, &szBuffer[8]);
                continue;
            }
            if (pos != LB_ERR)
                FUNC11(hDlgCtrl, pos, 1); // indicate that this item is a boot entry

            Settings.OSConfigurationCount++;
        }
    }

    FUNC15(hDC, hOldFont);
    FUNC14(hDlgCtrl, hDC);

    FUNC21(file);
    Settings.UseBootIni = TRUE;

    /*
     * Start to search for the string at the "operating systems" section
     * (after the "boot loader" section, which takes 3 lines in the .INI file).
     */
    pos = FUNC7(hDlgCtrl, 3, Settings.szDefaultOS);
    if (pos != LB_ERR)
    {
        Settings.szDefaultPos = (ULONG)pos;
        FUNC9(hDlgCtrl, pos);
        // SendMessageW(hDlgCtrl, WM_VSCROLL, SB_LINEDOWN, 0); // Or use SetScroll...()
    }

    FUNC17(hDlg, IDC_TXT_BOOT_TIMEOUT, Settings.TimeOut, FALSE);
    if (Settings.OSConfigurationCount < 2)
    {
        FUNC1(FUNC4(hDlg, IDC_BTN_SET_DEFAULT_BOOT), FALSE);
        FUNC1(FUNC4(hDlg, IDC_BTN_MOVE_UP_BOOT_OPTION), FALSE);
        FUNC1(FUNC4(hDlg, IDC_BTN_MOVE_DOWN_BOOT_OPTION), FALSE);
    }

    return TRUE;
}