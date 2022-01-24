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
struct TYPE_4__ {int dwStyle; int /*<<< orphan*/  wState; int /*<<< orphan*/  self; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ HEADCOMBO ;

/* Variables and functions */
 int /*<<< orphan*/  CBF_NOTIFY ; 
 int CBS_HASSTRINGS ; 
 int CBS_OWNERDRAWFIXED ; 
 int CBS_OWNERDRAWVARIABLE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_BORDER ; 
 int WS_EX_CLIENTEDGE ; 
 int WS_EX_NOPARENTNOTIFY ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static LRESULT FUNC6(HWND hwnd, LONG style)
{
    HEADCOMBO *lphc;

    if (FUNC0() && (lphc = FUNC5(sizeof(*lphc))))
    {
        lphc->self = hwnd;
        FUNC2( hwnd, 0, (LONG_PTR)lphc );

       /* some braindead apps do try to use scrollbar/border flags */

	lphc->dwStyle = style & ~(WS_BORDER | WS_HSCROLL | WS_VSCROLL);
        FUNC3( hwnd, GWL_STYLE, style & ~(WS_BORDER | WS_HSCROLL | WS_VSCROLL) );

	/*
	 * We also have to remove the client edge style to make sure
	 * we don't end-up with a non client area.
	 */
        FUNC3( hwnd, GWL_EXSTYLE,
                        FUNC1( hwnd, GWL_EXSTYLE ) & ~WS_EX_CLIENTEDGE );

	if( !(style & (CBS_OWNERDRAWFIXED | CBS_OWNERDRAWVARIABLE)) )
              lphc->dwStyle |= CBS_HASSTRINGS;
	if( !(FUNC1( hwnd, GWL_EXSTYLE ) & WS_EX_NOPARENTNOTIFY) )
	      lphc->wState |= CBF_NOTIFY;

        FUNC4("[%p], style = %08x\n", lphc, lphc->dwStyle );
        return TRUE;
    }
    return FALSE;
}