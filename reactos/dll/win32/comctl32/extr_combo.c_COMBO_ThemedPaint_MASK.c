#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int wState; int dwStyle; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; int /*<<< orphan*/  textRect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  TYPE_1__ HEADCOMBO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int CBF_BUTTONDOWN ; 
 int CBF_HOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int CBS_DROPDOWNLIST ; 
 scalar_t__ CBS_SIMPLE ; 
 int CBXS_DISABLED ; 
 int CBXS_HOT ; 
 int CBXS_NORMAL ; 
 int CBXS_PRESSED ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  CP_DROPDOWNBUTTON ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC10(HTHEME theme, HEADCOMBO *lphc, HDC hdc)
{
    int button_state;
    RECT frame;

    /* paint border */
    if (FUNC1(lphc) != CBS_SIMPLE)
        FUNC6(lphc->self, &frame);
    else
    {
        frame = lphc->textRect;
        FUNC7(&frame, FUNC5(), FUNC5());
        FUNC7(&frame, FUNC2(), FUNC3());
    }

    FUNC4(theme, hdc, 0, FUNC9(lphc->self) ? CBXS_NORMAL : CBXS_DISABLED, &frame, NULL);

    /* Paint button */
    if (!FUNC8(&lphc->buttonRect))
    {
        if (!FUNC9(lphc->self))
            button_state = CBXS_DISABLED;
        else if (lphc->wState & CBF_BUTTONDOWN)
            button_state = CBXS_PRESSED;
        else if (lphc->wState & CBF_HOT)
            button_state = CBXS_HOT;
        else
            button_state = CBXS_NORMAL;
        FUNC4(theme, hdc, CP_DROPDOWNBUTTON, button_state, &lphc->buttonRect, NULL);
    }

    if ((lphc->dwStyle & CBS_DROPDOWNLIST) == CBS_DROPDOWNLIST)
        FUNC0(lphc, hdc);

    return 0;
}