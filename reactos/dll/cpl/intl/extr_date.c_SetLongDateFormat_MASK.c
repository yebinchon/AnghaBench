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
typedef  int* PWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  IDC_LONGDATEFMT_COMBO ; 
 int /*<<< orphan*/  IDS_ERROR_SYMBOL_FORMAT_LONG ; 
 scalar_t__ MAX_SAMPLES_STR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 size_t FUNC4 (int*) ; 

__attribute__((used)) static BOOL
FUNC5(HWND hwndDlg, PWSTR pszLongDateFmt)
{
    BOOL OpenApostFlg = FALSE;
    INT nFmtStrSize;
    INT nDateCompCount;

    /* Get format */
    FUNC1(hwndDlg, IDC_LONGDATEFMT_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszLongDateFmt);

    /* Get format string size */
    nFmtStrSize = FUNC4(pszLongDateFmt);

    /* Check date components */
    for (nDateCompCount = 0; nDateCompCount < nFmtStrSize; nDateCompCount++)
    {
        if (pszLongDateFmt[nDateCompCount] == L'\'')
        {
            OpenApostFlg = !OpenApostFlg;
        }

        if (FUNC3(pszLongDateFmt[nDateCompCount]) &&
            !FUNC2(pszLongDateFmt[nDateCompCount]) &&
            !OpenApostFlg)
        {
            FUNC0(IDS_ERROR_SYMBOL_FORMAT_LONG);
            return FALSE;
        }
    }

    if (OpenApostFlg || nFmtStrSize == 0)
    {
        FUNC0(IDS_ERROR_SYMBOL_FORMAT_LONG);
        return FALSE;
    }

    return TRUE;
}