#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hMainWnd; } ;
typedef  TYPE_1__ WINHELP_WINDOW ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ top; } ;
typedef  TYPE_2__ RECT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ID_BUTTON ; 
 int /*<<< orphan*/  CTL_ID_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void            FUNC4(WINHELP_WINDOW* win)
{
    RECT        rect, button_box_rect;
    INT         text_top = 0;
    HWND        hButtonBoxWnd = FUNC1(win->hMainWnd, CTL_ID_BUTTON);
    HWND        hTextWnd = FUNC1(win->hMainWnd, CTL_ID_TEXT);

    FUNC0(win->hMainWnd, &rect);

    /* Update button box and text Window */
    FUNC3(hButtonBoxWnd, HWND_TOP,
                 rect.left, rect.top,
                 rect.right - rect.left,
                 rect.bottom - rect.top, 0);

    if (FUNC2(hButtonBoxWnd, &button_box_rect))
        text_top = rect.top + button_box_rect.bottom - button_box_rect.top;

    FUNC3(hTextWnd, HWND_TOP,
                 rect.left, text_top,
                 rect.right - rect.left,
                 rect.bottom - text_top, 0);

}