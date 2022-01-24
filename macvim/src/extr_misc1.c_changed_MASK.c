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
struct TYPE_4__ {int /*<<< orphan*/  b_changedtick; scalar_t__ b_may_swap; int /*<<< orphan*/  b_changed; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* curbuf ; 
 scalar_t__ emsg_silent ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int msg_scroll ; 
 scalar_t__ need_wait_return ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ xim_changed_while_preediting ; 

void
FUNC8()
{
#if defined(FEAT_XIM) && (defined(FEAT_GUI_GTK) || defined(FEAT_GUI_MACVIM))
    /* The text of the preediting area is inserted, but this doesn't
     * mean a change of the buffer yet.  That is delayed until the
     * text is committed. (this means preedit becomes empty) */
    if (im_is_preediting() && !xim_changed_while_preediting)
	return;
    xim_changed_while_preediting = FALSE;
#endif

    if (!curbuf->b_changed)
    {
	int	save_msg_scroll = msg_scroll;

	/* Give a warning about changing a read-only file.  This may also
	 * check-out the file, thus change "curbuf"! */
	FUNC1(0);

	/* Create a swap file if that is wanted.
	 * Don't do this for "nofile" and "nowrite" buffer types. */
	if (curbuf->b_may_swap
#ifdef FEAT_QUICKFIX
		&& !bt_dontwrite(curbuf)
#endif
		)
	{
	    FUNC4(curbuf);

	    /* The ml_open_file() can cause an ATTENTION message.
	     * Wait two seconds, to make sure the user reads this unexpected
	     * message.  Since we could be anywhere, call wait_return() now,
	     * and don't let the emsg() set msg_scroll. */
	    if (need_wait_return && emsg_silent == 0)
	    {
		FUNC5();
		FUNC6(2000L, TRUE);
		FUNC7(TRUE);
		msg_scroll = save_msg_scroll;
	    }
	}
	FUNC2();
    }
    ++curbuf->b_changedtick;
}