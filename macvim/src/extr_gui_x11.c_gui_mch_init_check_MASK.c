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
struct TYPE_2__ {int /*<<< orphan*/  dying; int /*<<< orphan*/ * dpy; } ;

/* Variables and functions */
 int CARDINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAIL ; 
 int OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VIM_CLASS ; 
 int /*<<< orphan*/  VIM_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * app_context ; 
 int /*<<< orphan*/  cmdline_options ; 
 int /*<<< orphan*/  e_opendisp ; 
 TYPE_1__ gui ; 
 int gui_argc ; 
 int /*<<< orphan*/  gui_argv ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6()
{
#ifdef FEAT_XIM
    XtSetLanguageProc(NULL, NULL, NULL);
#endif
    FUNC5();
    if (app_context != NULL)
	gui.dpy = FUNC2(app_context, 0, VIM_NAME, VIM_CLASS,
		cmdline_options, FUNC1(cmdline_options),
		CARDINAL &gui_argc, gui_argv);

    if (app_context == NULL || gui.dpy == NULL)
    {
	gui.dying = TRUE;
	FUNC0(FUNC4(e_opendisp));
	return FAIL;
    }
    return OK;
}