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
struct TYPE_3__ {scalar_t__ nNumNegFormat; int /*<<< orphan*/  szNumNegativeSign; int /*<<< orphan*/  szNumDecimalSep; } ;
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
 int /*<<< orphan*/  IDC_NUMBERSNNUMFORMAT ; 
 size_t MAX_NEG_NUMBERS_SAMPLES ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** lpNegNumFmtSamples ; 

__attribute__((used)) static VOID
FUNC4(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    PWSTR pszString1, pszString2;
    INT nCBIndex;

    /* Clear all box content */
    FUNC3(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);

    /* Create standard list of negative numbers formats */
    for (nCBIndex = 0; nCBIndex < MAX_NEG_NUMBERS_SAMPLES; nCBIndex++)
    {
        /* Replace standard separator to setted */
        pszString1 = FUNC2(lpNegNumFmtSamples[nCBIndex],
                                   pGlobalData->szNumDecimalSep,
                                   L",");
        if (pszString1 != NULL)
        {
            /* Replace standard negative sign to setted */
            pszString2 = FUNC2(pszString1,
                                       pGlobalData->szNumNegativeSign,
                                       L"-");
            if (pszString2 != NULL)
            {
                FUNC3(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                                    CB_ADDSTRING,
                                    0,
                                    (LPARAM)pszString2);

                FUNC1(FUNC0(), 0, pszString2);
            }

            FUNC1(FUNC0(), 0, pszString1);
        }
    }

    /* Set current item to value from registry */
    FUNC3(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumNegFormat,
                        (LPARAM)0);
}