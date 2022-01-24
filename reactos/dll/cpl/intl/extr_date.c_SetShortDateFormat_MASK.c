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
typedef  int WCHAR ;
typedef  int* PWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  IDC_SHRTDATEFMT_COMBO ; 
 int /*<<< orphan*/  IDC_SHRTDATESEP_COMBO ; 
 int /*<<< orphan*/  IDS_ERROR_SYMBOL_FORMAT_SHORT ; 
 int MAX_SAMPLES_STR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int* FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 size_t FUNC9 (int*) ; 

__attribute__((used)) static BOOL
FUNC10(HWND hwndDlg, PWSTR pszShortDateFmt)
{
    WCHAR szShortDateSep[MAX_SAMPLES_STR_SIZE];
    WCHAR szFoundDateSep[MAX_SAMPLES_STR_SIZE];
    PWSTR pszResultStr;
    PWSTR pszFoundSep;
    BOOL OpenApostFlg = FALSE;
    INT nFmtStrSize;
    INT nDateCompCount;

    /* Get format */
    FUNC5(hwndDlg, IDC_SHRTDATEFMT_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszShortDateFmt);

    /* Get separator */
    FUNC5(hwndDlg, IDC_SHRTDATESEP_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)szShortDateSep);

    /* Get format-string size */
    nFmtStrSize = FUNC9(pszShortDateFmt);

    /* Check date components */
    for (nDateCompCount = 0; nDateCompCount < nFmtStrSize; nDateCompCount++)
    {
        if (pszShortDateFmt[nDateCompCount] == L'\'')
        {
            OpenApostFlg = !OpenApostFlg;
        }

        if (FUNC7(pszShortDateFmt[nDateCompCount]) &&
            !FUNC6(pszShortDateFmt[nDateCompCount]) &&
            !OpenApostFlg)
        {
            FUNC3(IDS_ERROR_SYMBOL_FORMAT_SHORT);
            return FALSE;
        }
    }

    if (OpenApostFlg || nFmtStrSize == 0)
    {
        FUNC3(IDS_ERROR_SYMBOL_FORMAT_SHORT);
        return FALSE;
    }

    pszFoundSep = FUNC0(pszShortDateFmt);
    if (pszFoundSep != NULL)
    {
        /* Substring replacement of separator */
        FUNC8(szFoundDateSep, pszFoundSep);
        pszResultStr = FUNC4(pszShortDateFmt, szShortDateSep, szFoundDateSep);
        if (pszResultStr != NULL)
        {
            FUNC8(pszShortDateFmt, pszResultStr);
            FUNC2(FUNC1(), 0, pszResultStr);
        }

        FUNC2(FUNC1(), 0, pszFoundSep);
    }

    return TRUE;
}