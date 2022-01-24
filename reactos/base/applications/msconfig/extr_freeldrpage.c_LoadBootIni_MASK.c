#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int WCHAR ;
typedef  int UINT ;
struct TYPE_2__ {int OSConfigurationCount; int /*<<< orphan*/  TimeOut; scalar_t__ szDefaultPos; scalar_t__ szDefaultOS; int /*<<< orphan*/  UseBootIni; } ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_BTN_MOVE_DOWN_BOOT_OPTION ; 
 int /*<<< orphan*/  IDC_BTN_MOVE_UP_BOOT_OPTION ; 
 int /*<<< orphan*/  IDC_BTN_SET_DEFAULT_BOOT ; 
 int /*<<< orphan*/  IDC_LIST_BOX ; 
 int /*<<< orphan*/  IDC_TXT_BOOT_TIMEOUT ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_FINDSTRING ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ Settings ; 
 int /*<<< orphan*/  FUNC6 (int*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int*,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int*) ; 
 int FUNC15 (int*) ; 

__attribute__((used)) static BOOL
FUNC16(WCHAR *szDrive, HWND hDlg)
{
    WCHAR szBuffer[BUFFER_SIZE];
    HWND hDlgCtrl;
    FILE * file;
    UINT length;
    LRESULT pos;
    HRESULT hr;

    hr = FUNC7(szBuffer, sizeof(szBuffer), szDrive);
    if (FUNC1(hr))
        return FALSE;

    hr = FUNC6(szBuffer, sizeof(szBuffer), L"freeldr.ini");
    if (FUNC1(hr))
        return FALSE;

    file = FUNC9(szBuffer, L"rt");
    if (!file)
    {
        hr = FUNC7(szBuffer, sizeof(szBuffer), szDrive);
        if (FUNC1(hr))
            return FALSE;

        hr = FUNC6(szBuffer, sizeof(szBuffer), L"boot.ini");
        if (FUNC1(hr))
            return FALSE;
            
        file = FUNC9(szBuffer, L"rt");
        if (!file)
            return FALSE;
    }     

    hDlgCtrl = FUNC2(hDlg, IDC_LIST_BOX);

    while(!FUNC12(file))
    {
        if (FUNC13(szBuffer, BUFFER_SIZE, file))
        {
            length = FUNC15(szBuffer);
            if (length > 1)
            {
                szBuffer[length] = L'\0';
                szBuffer[length - 1] = L'\0';

                pos = FUNC4(hDlgCtrl, LB_ADDSTRING, 0, (LPARAM)szBuffer);

                if (szBuffer[0] == L'[')
                    continue;

                if (!FUNC8(szBuffer, L"timeout=", 8))
                {
                    Settings.TimeOut = FUNC10(&szBuffer[8]);
                    continue;
                }

                if (!FUNC8(szBuffer, L"default=", 8))
                {
                    FUNC14(Settings.szDefaultOS, &szBuffer[8]);
                    continue;
                }
                if (pos != LB_ERR)
                    FUNC3(hDlgCtrl, LB_SETITEMDATA, pos, 1); // indicate that this item is an boot entry
                Settings.OSConfigurationCount++;
            }
        }
    }

    FUNC11(file);
    Settings.UseBootIni = TRUE;

    pos = FUNC4(hDlgCtrl, LB_FINDSTRING, 3, (LPARAM)Settings.szDefaultOS);
    if (pos != LB_ERR)
    {
       Settings.szDefaultPos = pos;
       FUNC3(hDlgCtrl, LB_SETCURSEL, pos, 0);
    }

    FUNC5(hDlg, IDC_TXT_BOOT_TIMEOUT, Settings.TimeOut, FALSE);
    if (Settings.OSConfigurationCount < 2)
    {
        FUNC0(FUNC2(hDlg, IDC_BTN_SET_DEFAULT_BOOT), FALSE);
        FUNC0(FUNC2(hDlg, IDC_BTN_MOVE_UP_BOOT_OPTION), FALSE);
        FUNC0(FUNC2(hDlg, IDC_BTN_MOVE_DOWN_BOOT_OPTION), FALSE);
    }
    return TRUE;
}