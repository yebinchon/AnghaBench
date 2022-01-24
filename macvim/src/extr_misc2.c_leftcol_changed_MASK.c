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
typedef  scalar_t__ colnr_T ;
struct TYPE_4__ {int w_leftcol; scalar_t__ w_virtcol; void* w_set_curswant; int /*<<< orphan*/  w_cursor; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int FALSE ; 
 int /*<<< orphan*/  NOT_VALID ; 
 void* TRUE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* curwin ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 long p_siso ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7()
{
    long	lastcol;
    colnr_T	s, e;
    int		retval = FALSE;

    FUNC1();
    lastcol = curwin->w_leftcol + FUNC0(curwin) - FUNC3() - 1;
    FUNC6();

    /*
     * If the cursor is right or left of the screen, move it to last or first
     * character.
     */
    if (curwin->w_virtcol > (colnr_T)(lastcol - p_siso))
    {
	retval = TRUE;
	FUNC2((colnr_T)(lastcol - p_siso));
    }
    else if (curwin->w_virtcol < curwin->w_leftcol + p_siso)
    {
	retval = TRUE;
	(void)FUNC2((colnr_T)(curwin->w_leftcol + p_siso));
    }

    /*
     * If the start of the character under the cursor is not on the screen,
     * advance the cursor one more char.  If this fails (last char of the
     * line) adjust the scrolling.
     */
    FUNC4(curwin, &curwin->w_cursor, &s, NULL, &e);
    if (e > (colnr_T)lastcol)
    {
	retval = TRUE;
	FUNC2(s - 1);
    }
    else if (s < curwin->w_leftcol)
    {
	retval = TRUE;
	if (FUNC2(e + 1) == FAIL)	/* there isn't another character */
	{
	    curwin->w_leftcol = s;	/* adjust w_leftcol instead */
	    FUNC1();
	}
    }

    if (retval)
	curwin->w_set_curswant = TRUE;
    FUNC5(NOT_VALID);
    return retval;
}