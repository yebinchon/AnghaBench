#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {scalar_t__ hwndFrom; int code; } ;
typedef  TYPE_1__* LPNMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_CONNECTEDDRIVELIST ; 
 int /*<<< orphan*/  ID_OK ; 
#define  LVN_ITEMCHANGED 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

VOID FUNC3(WPARAM wParam, LPARAM lParam, HWND hDlg)
{
    LPNMHDR pnmh = (LPNMHDR)lParam;
    HWND hListView = FUNC1(hDlg, IDC_CONNECTEDDRIVELIST);
    HWND hOkButton = FUNC1(hDlg, ID_OK);

    if (pnmh->hwndFrom == hListView)
    {
        switch (pnmh->code)
        {
            case LVN_ITEMCHANGED:
                if (FUNC2(hListView))
                {
                    FUNC0(hOkButton, TRUE);
                }
                else
                {
                    FUNC0(hOkButton, FALSE);
                }
                break;
        }
    }
}