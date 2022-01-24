#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ in_use; scalar_t__ starting; } ;

/* Variables and functions */
 scalar_t__ CLEAR ; 
 scalar_t__ Columns ; 
 void* FALSE ; 
 int /*<<< orphan*/ * LineOffset ; 
 void** LineWraps ; 
 scalar_t__ NOT_VALID ; 
 scalar_t__ NO_SCREEN ; 
 int Rows ; 
 int /*<<< orphan*/ * ScreenLines ; 
 void* TRUE ; 
 int /*<<< orphan*/  T_CL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* clear_cmdline ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmdline_row ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  firstwin ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* mode_displayed ; 
 scalar_t__ msg_col ; 
 void* msg_didany ; 
 void* msg_didout ; 
 int /*<<< orphan*/  msg_row ; 
 scalar_t__ msg_scrolled ; 
 scalar_t__ must_redraw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* redraw_cmdline ; 
 void* redraw_tabline ; 
 int screen_attr ; 
 void* screen_cleared ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ starting ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9()
{
    int	    i;

    if (starting == NO_SCREEN || ScreenLines == NULL
#ifdef FEAT_GUI
	    || (gui.in_use && gui.starting)
#endif
	    )
	return;

#ifdef FEAT_GUI
    if (!gui.in_use)
#endif
	screen_attr = -1;	/* force setting the Normal colors */
    FUNC7();	/* don't want highlighting here */

#ifdef FEAT_CLIPBOARD
    /* disable selection without redrawing it */
    clip_scroll_selection(9999);
#endif

    /* blank out ScreenLines */
    for (i = 0; i < Rows; ++i)
    {
	FUNC3(LineOffset[i], (int)Columns);
	LineWraps[i] = FALSE;
    }

    if (FUNC0(T_CL))
    {
	FUNC5(T_CL);		/* clear the display */
	clear_cmdline = FALSE;
	mode_displayed = FALSE;
    }
    else
    {
	/* can't clear the screen, mark all chars with invalid attributes */
	for (i = 0; i < Rows; ++i)
	    FUNC4(LineOffset[i], (int)Columns);
	clear_cmdline = TRUE;
    }

    screen_cleared = TRUE;	/* can use contents of ScreenLines now */

    FUNC8(firstwin);
    redraw_cmdline = TRUE;
#ifdef FEAT_WINDOWS
    redraw_tabline = TRUE;
#endif
    if (must_redraw == CLEAR)	/* no need to clear again */
	must_redraw = NOT_VALID;
    FUNC2();
    msg_row = cmdline_row;	/* put cursor on last line for messages */
    msg_col = 0;
    FUNC6();		/* don't know where cursor is now */
    msg_scrolled = 0;		/* can't scroll back */
    msg_didany = FALSE;
    msg_didout = FALSE;
}