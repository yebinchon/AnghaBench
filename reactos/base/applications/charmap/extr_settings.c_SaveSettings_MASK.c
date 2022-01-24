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
struct TYPE_2__ {int /*<<< orphan*/  IsAdvancedView; } ;
typedef  char TCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDC_COMBO_CHARSET ; 
 int /*<<< orphan*/  IDC_FONTCOMBO ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ Settings ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_szGeneralRegKey ; 
 int /*<<< orphan*/  hCharmapDlg ; 
 int /*<<< orphan*/  hWnd ; 

extern void FUNC6(void)
{
    HKEY hKey = NULL;

    if (FUNC3(HKEY_CURRENT_USER, g_szGeneralRegKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, NULL, &hKey, NULL) == ERROR_SUCCESS)
    {
        TCHAR szBuffer[MAX_PATH];

        hWnd = FUNC1(hCharmapDlg, IDC_FONTCOMBO);
        FUNC0(hWnd, szBuffer, MAX_PATH);

        if(*szBuffer != '\0')
            FUNC4(hKey, FUNC5("Font"), 0, REG_SZ, (LPBYTE) szBuffer, (DWORD) MAX_PATH);

        hWnd = FUNC1(hCharmapDlg, IDC_COMBO_CHARSET);
        FUNC0(hWnd, szBuffer, MAX_PATH);

        if(*szBuffer != '\0')
            FUNC4(hKey, FUNC5("CodePage"), 0, REG_SZ, (LPBYTE) szBuffer, (DWORD) MAX_PATH);

        FUNC4(hKey, FUNC5("Advanced"), 0, REG_DWORD, (LPBYTE)&Settings.IsAdvancedView, (DWORD) sizeof(DWORD));

        FUNC2(hKey);
    }
}