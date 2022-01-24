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
struct TYPE_3__ {int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COLOR_BTNSHADOW ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITE_PEN ; 

__attribute__((used)) static LRESULT FUNC10(HWND hWnd)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT rc;

    hdc = FUNC0(hWnd, &ps);

    /* Only paint the Navigation pane, identified by the fact
     * that it has a child window
     */
    if (FUNC5(hWnd, GW_CHILD))
    {
        FUNC2(hWnd, &rc);

        /* set the border color */
        FUNC8(hdc, FUNC3(DC_PEN));
        FUNC9(hdc, FUNC4(COLOR_BTNSHADOW));

        /* Draw the top border */
        FUNC6(hdc, rc.right, 0);

        FUNC8(hdc, FUNC3(WHITE_PEN));
        FUNC7(hdc, 0, 1, NULL);
        FUNC6(hdc, rc.right, 1);
    }

    FUNC1(hWnd, &ps);

    return 0;
}