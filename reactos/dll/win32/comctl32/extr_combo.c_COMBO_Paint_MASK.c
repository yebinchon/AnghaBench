#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int wState; int /*<<< orphan*/  textRect; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ HEADCOMBO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 int CBF_EDIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ CBS_DROPDOWNLIST ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  COLOR_WINDOW ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC13(HEADCOMBO *lphc, HDC hdc)
{
    HBRUSH hPrevBrush, hBkgBrush;

    FUNC12("hdc=%p\n", hdc);

    /*
     * Retrieve the background brush and select it in the
     * DC.
     */
    hBkgBrush = FUNC4(lphc, hdc);
    hPrevBrush = FUNC11(hdc, hBkgBrush);
    if (!(lphc->wState & CBF_EDIT))
        FUNC6(hdc, &lphc->textRect, hBkgBrush);

    /*
     * In non 3.1 look, there is a sunken border on the combobox
     */
    FUNC0(lphc->self, lphc, hdc);

    if (!FUNC10(&lphc->buttonRect))
        FUNC1(lphc, hdc, lphc->buttonRect);

    /* paint the edit control padding area */
    if (FUNC3(lphc) != CBS_DROPDOWNLIST)
    {
        RECT rPadEdit = lphc->textRect;

        FUNC9(&rPadEdit, FUNC5(), FUNC5());

        FUNC7(hdc, &rPadEdit, FUNC8(COLOR_WINDOW));
    }

    if (!(lphc->wState & CBF_EDIT))
        FUNC2( lphc, hdc );

    if (hPrevBrush)
        FUNC11( hdc, hPrevBrush );

    return 0;
}