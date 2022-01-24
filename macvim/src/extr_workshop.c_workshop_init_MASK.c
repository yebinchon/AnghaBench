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
typedef  int /*<<< orphan*/  char_u ;
typedef  int XtInputMask ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  GO_FOOTER ; 
 int /*<<< orphan*/  GO_MENUS ; 
 int /*<<< orphan*/  GO_TOOLBAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  XmNheight ; 
 int /*<<< orphan*/  XmNwidth ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int XtIMAlternateInput ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  app_context ; 
 int /*<<< orphan*/  p_go ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vimShell ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  workshopInitDone ; 
 scalar_t__ FUNC7 (int*,int*) ; 

void
FUNC8()
{
    char_u	 buf[64];
    int		 is_dirty = FALSE;
    int		 width, height;
    XtInputMask	 mask;

    /*
     * Turn on MenuBar, ToolBar, and Footer.
     */
    FUNC1(buf, p_go);
    if (FUNC6(p_go, GO_MENUS) == NULL)
    {
	FUNC0(buf, "m");
	is_dirty = TRUE;
    }
    if (FUNC6(p_go, GO_TOOLBAR) == NULL)
    {
	FUNC0(buf, "T");
	is_dirty = TRUE;
    }
    if (FUNC6(p_go, GO_FOOTER) == NULL)
    {
	FUNC0(buf, "F");
	is_dirty = TRUE;
    }
    if (is_dirty)
	FUNC5((char_u *)"go", 0L, buf, 0);

    /*
     * Set size from workshop_get_width_height().
     */
    width = height = 0;
    if (FUNC7(&width, &height))
    {
	FUNC4(vimShell,
		XmNwidth, width,
		XmNheight, height,
		NULL);
    }

    /*
     * Now read in the initial messages from eserve.
     */
    while ((mask = FUNC2(app_context))
	    && (mask & XtIMAlternateInput) && !workshopInitDone)
	FUNC3(app_context, (XtInputMask)XtIMAlternateInput);
}