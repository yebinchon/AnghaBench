#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CLICK ; 
 int CB_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDC_CHECK_ADVANCED ; 
 int /*<<< orphan*/  IDC_COMBO_CHARSET ; 
 int /*<<< orphan*/  IDC_FONTCOMBO ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MF_CHECKED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned long REG_DWORD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  g_szGeneralRegKey ; 
 int /*<<< orphan*/  hCharmapDlg ; 
 int /*<<< orphan*/  hWnd ; 

extern void FUNC10(void)
{
    HKEY hKey = NULL;
    int iItemIndex = -1;

    if (FUNC6(HKEY_CURRENT_USER, g_szGeneralRegKey, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        TCHAR szBuffer[MAX_PATH];
        DWORD dwAdvancedChecked;
        unsigned long type = REG_DWORD, size = 1024;

        /* Restore last selected font */
        if (FUNC4(HKEY_CURRENT_USER, g_szGeneralRegKey, FUNC9("Font"), szBuffer, (sizeof(szBuffer)/sizeof(szBuffer[0]))) == ERROR_SUCCESS)
        {
            //Get combobox handle
            hWnd = FUNC3(hCharmapDlg, IDC_FONTCOMBO);

            //Search for match and return index if match found
            iItemIndex = FUNC1(hWnd, -1, szBuffer);
            if(iItemIndex != CB_ERR)
            {
                FUNC2(hWnd, iItemIndex);
                FUNC0(hCharmapDlg);
            }
        }

        /* Restore last selected character set */
        if (FUNC4(HKEY_CURRENT_USER, g_szGeneralRegKey, FUNC9("CodePage"), szBuffer, (sizeof(szBuffer)/sizeof(szBuffer[0]))) == ERROR_SUCCESS)
        {
            //Get combobox handle
            hWnd = FUNC3(hCharmapDlg, IDC_COMBO_CHARSET);

            iItemIndex = FUNC1(hWnd, -1, szBuffer);
            if(iItemIndex != CB_ERR)
            {
                FUNC2(hWnd, iItemIndex);
            }
        }

        FUNC7(hKey, FUNC9("Advanced"), NULL, &type, (LPBYTE)&dwAdvancedChecked, &size);

        if(dwAdvancedChecked != FALSE)
            FUNC8(hCharmapDlg, IDC_CHECK_ADVANCED, BM_CLICK, MF_CHECKED, 0);

    FUNC5(hKey);
    }
    else
    {
        /* Default font seems to be Arial */
        hWnd = FUNC3(hCharmapDlg, IDC_FONTCOMBO);

        iItemIndex = FUNC1(hWnd, -1, FUNC9("Arial"));
        if(iItemIndex != CB_ERR)
        {
            FUNC2(hWnd, iItemIndex);
            FUNC0(hCharmapDlg);
        }
    }
}