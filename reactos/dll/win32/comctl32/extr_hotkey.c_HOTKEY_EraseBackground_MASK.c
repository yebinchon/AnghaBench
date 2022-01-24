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
struct TYPE_4__ {scalar_t__ hwndSelf; int /*<<< orphan*/  hwndNotify; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ HOTKEY_INFO ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CTLCOLOREDIT ; 
 int WS_DISABLED ; 
 TYPE_2__ comctl32_color ; 

__attribute__((used)) static LRESULT
FUNC6 (const HOTKEY_INFO *infoPtr, HDC hdc)
{
    HBRUSH hBrush, hSolidBrush = NULL;
    RECT   rc;

    if (FUNC4(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
        hBrush = hSolidBrush = FUNC0(comctl32_color.clrBtnFace);
    else
    {
        hBrush = (HBRUSH)FUNC5(infoPtr->hwndNotify, WM_CTLCOLOREDIT,
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