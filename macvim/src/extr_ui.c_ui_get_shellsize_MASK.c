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
struct TYPE_2__ {scalar_t__ starting; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  Columns ; 
 int OK ; 
 int /*<<< orphan*/  Rows ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ gui ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4()
{
    int	    retval;

#ifdef FEAT_GUI
    if (gui.in_use
# ifdef FEAT_GUI_MACVIM
            /* Avoid using terminal dimensions for GUI window.  MacVim
             * autosaves the dimensions of the first window. */
            || gui.starting
# endif
            )
	retval = gui_get_shellsize();
    else
#endif
	retval = FUNC2();

    FUNC0();

    /* adjust the default for 'lines' and 'columns' */
    if (retval == OK)
    {
	FUNC3("lines", Rows);
	FUNC3("columns", Columns);
    }
    return retval;
}