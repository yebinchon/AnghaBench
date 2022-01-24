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
typedef  int WCHAR ;
struct TYPE_3__ {void* nCurrDigits; void* nCurrNegFormat; void* nCurrPosFormat; int /*<<< orphan*/  szCurrThousandSep; int /*<<< orphan*/  szCurrDecimalSep; void* nCurrGrouping; int /*<<< orphan*/  szCurrSymbol; } ;
typedef  TYPE_1__* PGLOBALDATA ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  IDC_CURRENCYDECNUM ; 
 int /*<<< orphan*/  IDC_CURRENCYDECSEP ; 
 int /*<<< orphan*/  IDC_CURRENCYGRPNUM ; 
 int /*<<< orphan*/  IDC_CURRENCYGRPSEP ; 
 int /*<<< orphan*/  IDC_CURRENCYNEGVALUE ; 
 int /*<<< orphan*/  IDC_CURRENCYPOSVALUE ; 
 int /*<<< orphan*/  IDC_CURRENCYSYMBOL ; 
 int MAX_CURRDECIMALSEP ; 
 int MAX_CURRSYMBOL ; 
 int MAX_CURRTHOUSANDSEP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static
BOOL
FUNC3(
     HWND hwndDlg,
     PGLOBALDATA pGlobalData)
{
    WCHAR szCurrSymbol[MAX_CURRSYMBOL];
    WCHAR szCurrDecimalSep[MAX_CURRDECIMALSEP];
    WCHAR szCurrThousandSep[MAX_CURRTHOUSANDSEP];
    INT nCurrPosFormat;
    INT nCurrNegFormat;
    INT nCurrDigits;
    INT nCurrGrouping;

    /* Currency symbol */
    FUNC1(hwndDlg,
                            IDC_CURRENCYSYMBOL,
                            szCurrSymbol,
                            MAX_CURRSYMBOL);

    if (szCurrSymbol[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Positive Amount */
    FUNC0(hwndDlg,
                             IDC_CURRENCYPOSVALUE,
                             &nCurrPosFormat);

    /* Negative Amount */
    FUNC0(hwndDlg,
                             IDC_CURRENCYNEGVALUE,
                             &nCurrNegFormat);

    /* Decimal separator */
    FUNC1(hwndDlg,
                            IDC_CURRENCYDECSEP,
                            szCurrDecimalSep,
                            MAX_CURRDECIMALSEP);

    if (szCurrDecimalSep[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Number of fractional digits */
    FUNC0(hwndDlg,
                             IDC_CURRENCYDECNUM,
                             &nCurrDigits);

    /* Grouping symbol */
    FUNC1(hwndDlg,
                            IDC_CURRENCYGRPSEP,
                            szCurrThousandSep,
                            MAX_CURRTHOUSANDSEP);

    if (szCurrThousandSep[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Digit grouping */
    FUNC0(hwndDlg,
                             IDC_CURRENCYGRPNUM,
                             &nCurrGrouping);

    /* Store settings in global data */
    FUNC2(pGlobalData->szCurrSymbol, szCurrSymbol);
    pGlobalData->nCurrGrouping = nCurrGrouping;
    FUNC2(pGlobalData->szCurrDecimalSep, szCurrDecimalSep);
    FUNC2(pGlobalData->szCurrThousandSep, szCurrThousandSep);
    pGlobalData->nCurrPosFormat = nCurrPosFormat;
    pGlobalData->nCurrNegFormat = nCurrNegFormat;
    pGlobalData->nCurrDigits = nCurrDigits;

    return TRUE;
}