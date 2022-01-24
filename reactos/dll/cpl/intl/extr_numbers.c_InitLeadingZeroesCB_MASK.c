#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ nNumLeadingZero; int /*<<< orphan*/  szNumDecimalSep; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__* PGLOBALDATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_NUMBERSDISPLEADZER ; 
 size_t MAX_LEAD_ZEROES_SAMPLES ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lpLeadNumFmtSamples ; 

__attribute__((used)) static VOID
FUNC5(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    PWSTR pszResultStr;
    INT nCBIndex;

    /* Clear all box content */
    FUNC4(hwndDlg, IDC_NUMBERSDISPLEADZER,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);

    /* Create list of standard leading zeroes formats */
    for (nCBIndex = 0; nCBIndex < MAX_LEAD_ZEROES_SAMPLES; nCBIndex++)
    {
        pszResultStr = FUNC2(lpLeadNumFmtSamples[nCBIndex],
                                     pGlobalData->szNumDecimalSep,
                                     L",");
        if (pszResultStr != NULL)
        {
            FUNC3(hwndDlg, IDC_NUMBERSDISPLEADZER,
                               CB_ADDSTRING,
                               0,
                               (LPARAM)pszResultStr);
            FUNC1(FUNC0(), 0, pszResultStr);
        }
    }

    /* Set current item to value from registry */
    FUNC4(hwndDlg, IDC_NUMBERSDISPLEADZER,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumLeadingZero,
                        (LPARAM)0);
}