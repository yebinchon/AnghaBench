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
struct TYPE_2__ {int /*<<< orphan*/  tp_ch_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ROWS_AVAIL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* curtab ; 
 int /*<<< orphan*/  curwin ; 
 int /*<<< orphan*/ * firstwin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_ch ; 
 scalar_t__ p_ea ; 
 int /*<<< orphan*/  topframe ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void
FUNC7()
{
    int		h = (int)ROWS_AVAIL;

    if (firstwin == NULL)	/* not initialized yet */
	return;
#ifdef FEAT_WINDOWS
    if (h < frame_minheight(topframe, NULL))
	h = frame_minheight(topframe, NULL);

    /* First try setting the heights of windows with 'winfixheight'.  If
     * that doesn't result in the right height, forget about that option. */
    frame_new_height(topframe, h, FALSE, TRUE);
    if (!frame_check_height(topframe, h))
	frame_new_height(topframe, h, FALSE, FALSE);

    (void)win_comp_pos();		/* recompute w_winrow and w_wincol */
#else
    if (h < 1)
	h = 1;
    FUNC6(firstwin, h);
#endif
    FUNC0();
#ifdef FEAT_WINDOWS
    curtab->tp_ch_used = p_ch;
#endif

#if 0
    /* Disabled: don't want making the screen smaller make a window larger. */
    if (p_ea)
	win_equal(curwin, FALSE, 'v');
#endif
}