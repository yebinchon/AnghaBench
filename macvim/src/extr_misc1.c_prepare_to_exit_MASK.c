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
struct TYPE_2__ {scalar_t__ dying; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ Rows ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TMODE_COOK ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

void
FUNC7()
{
#if defined(SIGHUP) && defined(SIG_IGN)
    /* Ignore SIGHUP, because a dropped connection causes a read error, which
     * makes Vim exit and then handling SIGHUP causes various reentrance
     * problems. */
    signal(SIGHUP, SIG_IGN);
#endif

#ifdef FEAT_GUI
    if (gui.in_use)
    {
	gui.dying = TRUE;
	out_trash();	/* trash any pending output */
    }
    else
#endif
    {
	FUNC6((int)Rows - 1, 0);

	/*
	 * Switch terminal mode back now, so messages end up on the "normal"
	 * screen (if there are two screens).
	 */
	FUNC3(TMODE_COOK);
#ifdef WIN3264
	if (can_end_termcap_mode(FALSE) == TRUE)
#endif
	    FUNC5();
	FUNC1();
    }
}