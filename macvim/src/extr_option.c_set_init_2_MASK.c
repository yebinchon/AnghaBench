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
typedef  int long_u ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPT_FREE ; 
 int /*<<< orphan*/  OPT_LOCAL ; 
 int P_WAS_SET ; 
 int Rows ; 
 int /*<<< orphan*/  SHAPE_CURSOR ; 
 int /*<<< orphan*/  SHAPE_MOUSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  p_cp ; 
 int p_window ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 

void
FUNC9()
{
    int		idx;

    /*
     * 'scroll' defaults to half the window height. Note that this default is
     * wrong when the window height changes.
     */
    FUNC5("scroll", (long)((long_u)Rows >> 1));
    idx = FUNC1((char_u *)"scroll");
    if (idx >= 0 && !(options[idx].flags & P_WAS_SET))
	FUNC6(idx, OPT_LOCAL, p_cp);
    FUNC0();

    /*
     * 'window' is only for backwards compatibility with Vi.
     * Default is Rows - 1.
     */
    if (!FUNC2((char_u *)"window"))
	p_window = Rows - 1;
    FUNC5("window", Rows - 1);

    /* For DOS console the default is always black. */
#if !((defined(MSDOS) || defined(OS2) || defined(WIN3264)) && !defined(FEAT_GUI))
    /*
     * If 'background' wasn't set by the user, try guessing the value,
     * depending on the terminal name.  Only need to check for terminals
     * with a dark background, that can handle color.
     */
    idx = FUNC1((char_u *)"bg");
    if (idx >= 0 && !(options[idx].flags & P_WAS_SET)
						 && *FUNC8() == 'd')
    {
	FUNC7(NULL, idx, (char_u *)"dark", OPT_FREE, 0);
	/* don't mark it as set, when starting the GUI it may be
	 * changed again */
	options[idx].flags &= ~P_WAS_SET;
    }
#endif

#ifdef CURSOR_SHAPE
    parse_shape_opt(SHAPE_CURSOR); /* set cursor shapes from 'guicursor' */
#endif
#ifdef FEAT_MOUSESHAPE
    parse_shape_opt(SHAPE_MOUSE);  /* set mouse shapes from 'mouseshape' */
#endif
#ifdef FEAT_PRINTER
    (void)parse_printoptions();	    /* parse 'printoptions' default value */
#endif
}