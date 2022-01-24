#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  XtCallbackProc ;
typedef  int /*<<< orphan*/  Widget ;
typedef  int /*<<< orphan*/  Display ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  XmDO_NOTHING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmNdeleteResponse ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(Widget shell, XtCallbackProc close_callback, void *arg)
{
    static Atom wmp_atom = 0;
    static Atom dw_atom = 0;
    Display *display = FUNC2(shell);

    /* deactivate the built-in delete response of killing the application */
    FUNC3(shell, XmNdeleteResponse, XmDO_NOTHING, NULL);

    /* add a delete window protocol callback instead */
    if (!dw_atom)
    {
	wmp_atom = FUNC1(display, "WM_PROTOCOLS", True);
	dw_atom = FUNC1(display, "WM_DELETE_WINDOW", True);
    }
    FUNC0(shell, wmp_atom, dw_atom, close_callback, arg);
}