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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMODE_COOK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fdDump ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_cci ; 
 int /*<<< orphan*/  g_cmodein ; 
 int /*<<< orphan*/  g_cmodeout ; 
 scalar_t__ g_fCanChangeIcon ; 
 int /*<<< orphan*/  g_fForceExit ; 
 scalar_t__ g_fWindInitCalled ; 
 int /*<<< orphan*/  g_hConIn ; 
 int /*<<< orphan*/  g_hConOut ; 
 int /*<<< orphan*/  g_hOrigIcon ; 
 int /*<<< orphan*/  g_hOrigIconSmall ; 
 int /*<<< orphan*/  g_hWnd ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(int r)
{
    FUNC11();

    if (g_fWindInitCalled)
	FUNC10(TMODE_COOK);

    FUNC9(TRUE);		/* remove all memfiles */

    if (g_fWindInitCalled)
    {
#ifdef FEAT_TITLE
	mch_restore_title(3);
	/*
	 * Restore both the small and big icons of the console window to
	 * what they were at startup.  Don't do this when the window is
	 * closed, Vim would hang here.
	 */
	if (g_fCanChangeIcon && !g_fForceExit)
	    SetConsoleIcon(g_hWnd, g_hOrigIconSmall, g_hOrigIcon);
#endif

#ifdef MCH_WRITE_DUMP
	if (fdDump)
	{
	    time_t t;

	    time(&t);
	    fputs(ctime(&t), fdDump);
	    fclose(fdDump);
	}
	fdDump = NULL;
#endif
    }

    FUNC0(g_hConOut, &g_cci);
    FUNC2(g_hConIn,  g_cmodein);
    FUNC2(g_hConOut, g_cmodeout);

#ifdef DYNAMIC_GETTEXT
    dyn_libintl_end();
#endif

    FUNC5(r);
}