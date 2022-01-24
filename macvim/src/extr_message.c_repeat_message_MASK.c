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

/* Variables and functions */
 scalar_t__ ASKMORE ; 
 scalar_t__ CONFIRM ; 
 scalar_t__ EXTERNCMD ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HITRETURN ; 
 int Rows ; 
 scalar_t__ SETWSIZE ; 
 scalar_t__ State ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ msg_col ; 
 int /*<<< orphan*/  msg_didout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int msg_row ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

void
FUNC5()
{
    if (State == ASKMORE)
    {
	FUNC3(TRUE);	/* display --more-- message again */
	msg_row = Rows - 1;
    }
#ifdef FEAT_CON_DIALOG
    else if (State == CONFIRM)
    {
	display_confirm_msg();	/* display ":confirm" message again */
	msg_row = Rows - 1;
    }
#endif
    else if (State == EXTERNCMD)
    {
	FUNC4(msg_row, msg_col); /* put cursor back */
    }
    else if (State == HITRETURN || State == SETWSIZE)
    {
	if (msg_row == Rows - 1)
	{
	    /* Avoid drawing the "hit-enter" prompt below the previous one,
	     * overwrite it.  Esp. useful when regaining focus and a
	     * FocusGained autocmd exists but didn't draw anything. */
	    msg_didout = FALSE;
	    msg_col = 0;
	    FUNC2();
	}
	FUNC1();
	msg_row = Rows - 1;
    }
}