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
struct TYPE_6__ {int lnum; } ;
struct TYPE_7__ {TYPE_1__ w_cursor; } ;
typedef  TYPE_2__ win_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  buf_T ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* curwin ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	char	*filename,		/* filename to load */
	int	 lnum)			/* linenumber to go to */
{
    buf_T	*buf;		/* buffer filename is stored in */
    win_T	*win;		/* window filenme is displayed in */

    /*
     * Make sure filename is displayed and is the current window.
     */

    buf = FUNC0((char_u *)filename);
    if (buf == NULL || (win = FUNC1(buf)) == NULL)
    {
	/* No buffer or buffer is not in current window */
	/* wsdebug("load_window: load_buffer_by_name(\"%s\", %d)\n",
		filename, lnum); */
	FUNC2(filename, lnum);
    }
    else
    {
#ifdef FEAT_WINDOWS
	/* buf is in a window */
	if (win != curwin)
	{
	    win_enter(win, False);
	    /* wsdebug("load_window: window enter %s\n",
		    win->w_buffer->b_sfname); */
	}
#endif
	if (lnum > 0 && win->w_cursor.lnum != lnum)
	{
	    FUNC4(lnum);
	    /* wsdebug("load_window: warp to %s[%d]\n",
		    win->w_buffer->b_sfname, lnum); */
	}
    }
    FUNC3();
}