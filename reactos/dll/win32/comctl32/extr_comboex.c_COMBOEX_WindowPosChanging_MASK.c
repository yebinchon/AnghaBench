#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cy; int /*<<< orphan*/  flags; scalar_t__ cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ WINDOWPOS ;
struct TYPE_12__ {int /*<<< orphan*/  hwndCombo; scalar_t__ hwndEdit; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;
typedef  TYPE_3__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWP_NOACTIVATE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static LRESULT FUNC7 (const COMBOEX_INFO *infoPtr, WINDOWPOS *wp)
{
    RECT cbx_wrect, cbx_crect, cb_wrect;
    INT width, height;

    FUNC2 (infoPtr->hwndSelf, &cbx_wrect);
    FUNC1 (infoPtr->hwndSelf, &cbx_crect);
    FUNC2 (infoPtr->hwndCombo, &cb_wrect);

    /* width is winpos value + border width of comboex */
    width = wp->cx
	    + (cbx_wrect.right-cbx_wrect.left)
            - (cbx_crect.right-cbx_crect.left);

    FUNC5("winpos=(%d,%d %dx%d) flags=0x%08x\n",
	  wp->x, wp->y, wp->cx, wp->cy, wp->flags);
    FUNC5("EX window=(%s), client=(%s)\n",
          FUNC6(&cbx_wrect), FUNC6(&cbx_crect));
    FUNC5("CB window=(%s), EX setting=(0,0)-(%d,%d)\n",
          FUNC6(&cbx_wrect), width, cb_wrect.bottom-cb_wrect.top);

    if (width) FUNC4 (infoPtr->hwndCombo, HWND_TOP, 0, 0,
			     width,
			     cb_wrect.bottom-cb_wrect.top,
			     SWP_NOACTIVATE);

    FUNC2 (infoPtr->hwndCombo, &cb_wrect);

    /* height is combo window height plus border width of comboex */
    height =   (cb_wrect.bottom-cb_wrect.top)
	     + (cbx_wrect.bottom-cbx_wrect.top)
             - (cbx_crect.bottom-cbx_crect.top);
    wp->cy = height;
    if (infoPtr->hwndEdit) {
	FUNC0 (infoPtr);
	FUNC3 (infoPtr->hwndCombo, 0, TRUE);
    }

    return 0;
}