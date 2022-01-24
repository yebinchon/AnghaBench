#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_5__ {int /*<<< orphan*/  clrWindow; int /*<<< orphan*/  clrBtnFace; } ;
struct TYPE_4__ {int dwStyle; scalar_t__ hwndSelf; int /*<<< orphan*/  hwndNotify; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CTLCOLOREDIT ; 
 int WS_DISABLED ; 
 TYPE_2__ comctl32_color ; 

__attribute__((used)) static LRESULT
FUNC5 (const DATETIME_INFO *infoPtr, HDC hdc)
{
    HBRUSH hBrush, hSolidBrush = NULL;
    RECT   rc;

    if (infoPtr->dwStyle & WS_DISABLED)
        hBrush = hSolidBrush = FUNC0(comctl32_color.clrBtnFace);
    else
    {
        hBrush = (HBRUSH)FUNC4(infoPtr->hwndNotify, WM_CTLCOLOREDIT,
                                      (WPARAM)hdc, (LPARAM)infoPtr->hwndSelf);
        if (!hBrush)
            hBrush = hSolidBrush = FUNC0(comctl32_color.clrWindow);
    }

    FUNC3 (infoPtr->hwndSelf, &rc);

    FUNC2 (hdc, &rc, hBrush);

    if (hSolidBrush)
        FUNC1(hSolidBrush);

    return -1;
}