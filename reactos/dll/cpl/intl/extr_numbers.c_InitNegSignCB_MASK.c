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
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ szNumNegativeSign; } ;
typedef  TYPE_1__* PGLOBALDATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 size_t CB_ERR ; 
 int /*<<< orphan*/  CB_LIMITTEXT ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SELECTSTRING ; 
 int /*<<< orphan*/  IDC_NUMBERSNSIGNSYM ; 
 size_t MAX_NEG_SIGN_SAMPLES ; 
 int MAX_NUMNEGATIVESIGN ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__* lpNegSignSamples ; 

__attribute__((used)) static VOID
FUNC1(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    INT nCBIndex;
    INT nRetCode;

    /* Limit text length */
    FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                        CB_LIMITTEXT,
                        MAX_NUMNEGATIVESIGN - 1,
                        0);

    /* Clear all box content */
    FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);

    /* Create standard list of signs */
    for (nCBIndex = 0; nCBIndex < MAX_NEG_SIGN_SAMPLES; nCBIndex++)
    {
        FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)lpNegSignSamples[nCBIndex]);
    }

    /* Set current item to value from registry */
    nRetCode = FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                                   CB_SELECTSTRING,
                                   -1,
                                   (LPARAM)pGlobalData->szNumNegativeSign);

    /* If  it is not successful, add new values to list and select them */
    if (nRetCode == CB_ERR)
    {
        FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)pGlobalData->szNumNegativeSign);
        FUNC0(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_SELECTSTRING,
                            -1,
                            (LPARAM)pGlobalData->szNumNegativeSign);
    }
}