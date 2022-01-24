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
struct TYPE_3__ {void* nNumMeasure; void* nNumLeadingZero; void* nNumNegFormat; void* nNumDigits; void* nNumGrouping; int /*<<< orphan*/  szNumListSep; int /*<<< orphan*/  szNumNegativeSign; int /*<<< orphan*/  szNumThousandSep; int /*<<< orphan*/  szNumDecimalSep; } ;
typedef  TYPE_1__* PGLOBALDATA ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  IDC_NUMBERDSYMBOL ; 
 int /*<<< orphan*/  IDC_NUMBERSDGROUPING ; 
 int /*<<< orphan*/  IDC_NUMBERSDIGITGRSYM ; 
 int /*<<< orphan*/  IDC_NUMBERSDISPLEADZER ; 
 int /*<<< orphan*/  IDC_NUMBERSLSEP ; 
 int /*<<< orphan*/  IDC_NUMBERSMEASSYS ; 
 int /*<<< orphan*/  IDC_NUMBERSNDIGDEC ; 
 int /*<<< orphan*/  IDC_NUMBERSNNUMFORMAT ; 
 int /*<<< orphan*/  IDC_NUMBERSNSIGNSYM ; 
 int MAX_NUMDECIMALSEP ; 
 int MAX_NUMLISTSEP ; 
 int MAX_NUMNEGATIVESIGN ; 
 int MAX_NUMTHOUSANDSEP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static
BOOL
FUNC3(
    HWND hwndDlg,
    PGLOBALDATA pGlobalData)
{
    WCHAR szNumDecimalSep[MAX_NUMDECIMALSEP];
    WCHAR szNumThousandSep[MAX_NUMTHOUSANDSEP];
    WCHAR szNumNegativeSign[MAX_NUMNEGATIVESIGN];
    WCHAR szNumListSep[MAX_NUMLISTSEP];
    INT nNumDigits;
    INT nNumGrouping;
    INT nNumNegFormat;
    INT nNumLeadingZero;
    INT nNumMeasure;

    /* Decimal symbol */
    FUNC1(hwndDlg,
                            IDC_NUMBERDSYMBOL,
                            szNumDecimalSep,
                            MAX_NUMDECIMALSEP);

    if (szNumDecimalSep[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Number of digits after decimal */
    FUNC0(hwndDlg,
                             IDC_NUMBERSNDIGDEC,
                             &nNumDigits);

    /* Digit grouping symbol */
    FUNC1(hwndDlg,
                            IDC_NUMBERSDIGITGRSYM,
                            szNumThousandSep,
                            MAX_NUMTHOUSANDSEP);

    if (szNumThousandSep[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Digit grouping */
    FUNC0(hwndDlg,
                             IDC_NUMBERSDGROUPING,
                             &nNumGrouping);

    /* Negative sign symbol */
    FUNC1(hwndDlg,
                            IDC_NUMBERSNSIGNSYM,
                            szNumNegativeSign,
                            MAX_NUMNEGATIVESIGN);

    if (szNumNegativeSign[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Negative number format */
    FUNC0(hwndDlg,
                             IDC_NUMBERSNNUMFORMAT,
                             &nNumNegFormat);

    /* Display leading zeros */
    FUNC0(hwndDlg,
                             IDC_NUMBERSDISPLEADZER,
                             &nNumLeadingZero);

    /* List separator */
    FUNC1(hwndDlg,
                            IDC_NUMBERSLSEP,
                            szNumListSep,
                            MAX_NUMLISTSEP);

    if (szNumListSep[0] == L'\0')
    {
        /* TODO: Show error message */

        return FALSE;
    }

    /* Measurement system */
    FUNC0(hwndDlg,
                             IDC_NUMBERSMEASSYS,
                             &nNumMeasure);

    /* Store settings in global data */
    FUNC2(pGlobalData->szNumDecimalSep, szNumDecimalSep);
    FUNC2(pGlobalData->szNumThousandSep, szNumThousandSep);
    FUNC2(pGlobalData->szNumNegativeSign, szNumNegativeSign);
    FUNC2(pGlobalData->szNumListSep, szNumListSep);
    pGlobalData->nNumGrouping = nNumGrouping;
    pGlobalData->nNumDigits = nNumDigits;
    pGlobalData->nNumNegFormat = nNumNegFormat;
    pGlobalData->nNumLeadingZero = nNumLeadingZero;
    pGlobalData->nNumMeasure = nNumMeasure;

    return TRUE;
}