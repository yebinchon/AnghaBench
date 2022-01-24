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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDC_SHRTDATESEP_COMBO ; 
 int /*<<< orphan*/  IDS_ERROR_SYMBOL_SEPARATE ; 
 scalar_t__ MAX_SAMPLES_STR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 scalar_t__ FUNC2 (int) ; 
 size_t FUNC3 (int*) ; 

__attribute__((used)) static BOOL
FUNC4(HWND hwndDlg, PWSTR pszShortDateSep)
{
    INT nSepStrSize;
    INT nSepCount;

    /* Get separator */
    FUNC1(hwndDlg, IDC_SHRTDATESEP_COMBO,
                        WM_GETTEXT,
                        (WPARAM)MAX_SAMPLES_STR_SIZE,
                        (LPARAM)pszShortDateSep);

    /* Get separator string size */
    nSepStrSize = FUNC3(pszShortDateSep);

    /* Check date components */
    for (nSepCount = 0; nSepCount < nSepStrSize; nSepCount++)
    {
        if (FUNC2(pszShortDateSep[nSepCount]) || (pszShortDateSep[nSepCount] == L'\''))
        {
            FUNC0(IDS_ERROR_SYMBOL_SEPARATE);
            return FALSE;
        }
    }

    if (nSepStrSize == 0)
    {
        FUNC0(IDS_ERROR_SYMBOL_SEPARATE);
        return FALSE;
    }

    return TRUE;
}