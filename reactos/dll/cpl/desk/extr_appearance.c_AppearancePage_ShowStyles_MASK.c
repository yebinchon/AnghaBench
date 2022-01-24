#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
struct TYPE_4__ {scalar_t__ DisplayName; struct TYPE_4__* NextStyle; } ;
typedef  TYPE_1__* PTHEME_STYLE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(HWND hwndDlg, int nIDDlgItem, PTHEME_STYLE pStyles, PTHEME_STYLE pActiveStyle)
{
    int iListIndex;
    HWND hwndList = FUNC0(hwndDlg, nIDDlgItem);
    PTHEME_STYLE pCurrentStyle;

    FUNC1(hwndList, CB_RESETCONTENT , 0, 0);

    for (pCurrentStyle = pStyles;
         pCurrentStyle;
         pCurrentStyle = pCurrentStyle->NextStyle)
    {
        iListIndex = FUNC1(hwndList, CB_ADDSTRING, 0, (LPARAM)pCurrentStyle->DisplayName);
        FUNC1(hwndList, CB_SETITEMDATA, iListIndex, (LPARAM)pCurrentStyle);
        if (pCurrentStyle == pActiveStyle)
        {
            FUNC1(hwndList, CB_SETCURSEL, (WPARAM)iListIndex, 0);
        }
    }
}