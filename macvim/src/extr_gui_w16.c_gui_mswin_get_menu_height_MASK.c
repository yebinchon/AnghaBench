#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ starting; scalar_t__ menu_is_active; } ;
struct TYPE_5__ {int bottom; int top; } ;
typedef  TYPE_1__ RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESIZE_VERT ; 
 int /*<<< orphan*/  SM_CYCAPTION ; 
 int /*<<< orphan*/  SM_CYFRAME ; 
 int /*<<< orphan*/  SM_CYMENU ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_hwnd ; 
 int /*<<< orphan*/  s_menuBar ; 

__attribute__((used)) static int
FUNC6(
    int	    fix_window)	    /* If TRUE, resize window if menu height changed */
{
    static int	old_menu_height = -1;

    int	    num;
    int	    menu_height;

    if (gui.menu_is_active)
	num = FUNC1(s_menuBar);
    else
	num = 0;

    if (num == 0)
	menu_height = 0;
    else if (gui.starting)
	menu_height = FUNC2(SM_CYMENU);
    else
    {
	RECT r1, r2;
	int frameht = FUNC2(SM_CYFRAME);
	int capht = FUNC2(SM_CYCAPTION);

	/*	get window rect of s_hwnd
		 * get client rect of s_hwnd
		 * get cap height
		 * subtract from window rect, the sum of client height,
		 * (if not maximized)frame thickness, and caption height.
	 */
	FUNC3(s_hwnd, &r1);
	FUNC0(s_hwnd, &r2);
	menu_height = r1.bottom - r1.top - (r2.bottom-r2.top +
			       2 * frameht * (!FUNC4(s_hwnd)) + capht);
    }

    if (fix_window && menu_height != old_menu_height)
    {
	old_menu_height = menu_height;
	FUNC5(FALSE, FALSE, RESIZE_VERT);
    }

    return menu_height;
}