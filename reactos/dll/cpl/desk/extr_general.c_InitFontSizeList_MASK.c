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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ HINF ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int CB_ERR ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDC_FONTSIZE_COMBO ; 
 int /*<<< orphan*/  IDC_FONTSIZE_CUSTOM ; 
 int /*<<< orphan*/  INF_STYLE_WIN4 ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int LINE_LEN ; 
 scalar_t__ MAX_PATH ; 
 scalar_t__ REG_DWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static VOID
FUNC14(HWND hWnd)
{
    HINF hInf;
    HKEY hKey;
    HWND hFontSize;
    INFCONTEXT Context;
    int i, ci = 0;
    DWORD dwSize, dwValue, dwType;

    hFontSize = FUNC0(hWnd, IDC_FONTSIZE_COMBO);

    hInf = FUNC11(FUNC12("font.inf"), NULL,
                            INF_STYLE_WIN4, NULL);

    if (hInf != INVALID_HANDLE_VALUE)
    {
        if (FUNC7(hInf, FUNC12("Font Sizes"), NULL, &Context))
        {
            if (FUNC2(HKEY_LOCAL_MACHINE, FUNC12("SYSTEM\\CurrentControlSet\\Hardware Profiles\\Current\\Software\\Fonts"),
                             0, KEY_READ, &hKey) == ERROR_SUCCESS)
            {
                dwSize = MAX_PATH;
                dwType = REG_DWORD;

                if (FUNC3(hKey, FUNC12("LogPixels"), NULL, &dwType,
                                    (LPBYTE)&dwValue, &dwSize) != ERROR_SUCCESS)
                {
                    dwValue = 0;
                }

                FUNC1(hKey);
            }

            for (;;)
            {
                TCHAR Buffer[LINE_LEN];
                TCHAR Desc[LINE_LEN];

                if (FUNC10(&Context, 0, Buffer, sizeof(Buffer) / sizeof(TCHAR), NULL) &&
                    FUNC9(&Context, 1, &ci))
                {
                    FUNC13(Desc, FUNC12("%s (%d DPI)"), Buffer, ci);
                    i = FUNC4(hFontSize, CB_ADDSTRING, 0, (LPARAM)Desc);
                    if (i != CB_ERR)
                        FUNC4(hFontSize, CB_SETITEMDATA, (WPARAM)i, (LPARAM)ci);

                    if ((int)dwValue == ci)
                    {
                        FUNC4(hFontSize, CB_SETCURSEL, (WPARAM)i, 0);
                        FUNC5(FUNC0(hWnd, IDC_FONTSIZE_CUSTOM), Desc);
                    }
                    else
                        FUNC4(hFontSize, CB_SETCURSEL, 0, 0);
                }

                if (!FUNC8(&Context, &Context))
                {
                    break;
                }
            }
        }
    }

    FUNC6(hInf);
}