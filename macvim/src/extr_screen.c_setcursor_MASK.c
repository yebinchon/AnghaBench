#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int w_wcol; scalar_t__ w_p_rl; scalar_t__ w_wrow; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ has_mbyte ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 

void
FUNC11()
{
    if (FUNC6())
    {
	FUNC8();
	FUNC10(FUNC2(curwin) + curwin->w_wrow,
		FUNC1(curwin) + (
#ifdef FEAT_RIGHTLEFT
		/* With 'rightleft' set and the cursor on a double-wide
		 * character, position it on the leftmost column. */
		curwin->w_p_rl ? ((int)W_WIDTH(curwin) - curwin->w_wcol - (
# ifdef FEAT_MBYTE
			(has_mbyte
			   && (*mb_ptr2cells)(ml_get_cursor()) == 2
			   && vim_isprintc(gchar_cursor())) ? 2 :
# endif
			1)) :
#endif
							    curwin->w_wcol));
    }
}