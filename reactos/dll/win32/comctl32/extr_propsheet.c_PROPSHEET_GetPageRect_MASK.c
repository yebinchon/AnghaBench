#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int dwFlags; } ;
struct TYPE_10__ {int dwFlags; } ;
struct TYPE_12__ {TYPE_1__ ppshheader; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_11__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ PropSheetInfo ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  TYPE_4__* LPCPROPSHEETPAGEW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SUNKEN_LINEHEADER ; 
 int /*<<< orphan*/  IDC_TABCONTROL ; 
 int INTRNL_ANY_WIZARD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int PSH_HEADER ; 
 int PSH_WIZARD ; 
 int PSH_WIZARD97_NEW ; 
 int PSH_WIZARD97_OLD ; 
 int PSP_HIDEHEADER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCM_ADJUSTRECT ; 
 scalar_t__ WIZARD_PADDING ; 

__attribute__((used)) static void FUNC5(const PropSheetInfo * psInfo, HWND hwndDlg,
                                  RECT *rc, LPCPROPSHEETPAGEW ppshpage)
{
    if (psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD) {     
        HWND hwndChild;
        RECT r;

        if (((psInfo->ppshheader.dwFlags & (PSH_WIZARD97_NEW | PSH_WIZARD97_OLD)) &&
             (psInfo->ppshheader.dwFlags & PSH_HEADER) &&
             !(ppshpage->dwFlags & PSP_HIDEHEADER)) ||
            (psInfo->ppshheader.dwFlags & PSH_WIZARD))
        {
            rc->left = rc->top = WIZARD_PADDING;
        }
        else
        {
            rc->left = rc->top = 0;
        }
        rc->right = psInfo->width - rc->left;
        rc->bottom = psInfo->height - rc->top;
        FUNC2(hwndDlg, rc);

        if ((psInfo->ppshheader.dwFlags & (PSH_WIZARD97_NEW | PSH_WIZARD97_OLD)) &&
            (psInfo->ppshheader.dwFlags & PSH_HEADER) &&
            !(ppshpage->dwFlags & PSP_HIDEHEADER))
        {
            hwndChild = FUNC1(hwndDlg, IDC_SUNKEN_LINEHEADER);
            FUNC0(hwndChild, &r);
            FUNC3(hwndChild, hwndDlg, (LPPOINT) &r, 2);
            rc->top += r.bottom + 1;
        }
    } else {
        HWND hwndTabCtrl = FUNC1(hwndDlg, IDC_TABCONTROL);
        FUNC0(hwndTabCtrl, rc);
        FUNC4(hwndTabCtrl, TCM_ADJUSTRECT, FALSE, (LPARAM)rc);
        FUNC3(hwndTabCtrl, hwndDlg, (LPPOINT)rc, 2);
    }
}