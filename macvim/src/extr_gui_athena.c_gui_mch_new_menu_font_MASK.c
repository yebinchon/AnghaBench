#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  dname; struct TYPE_5__* next; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  scalar_t__ Widget ;
struct TYPE_6__ {int menu_height; int /*<<< orphan*/  dpy; int /*<<< orphan*/  menu_height_fixed; } ;
typedef  int Position ;
typedef  scalar_t__ Pixmap ;
typedef  int Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  RESIZE_VERT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  XtNborderWidth ; 
 int /*<<< orphan*/  XtNheight ; 
 int /*<<< orphan*/  XtNvSpace ; 
 int /*<<< orphan*/  XtNwidth ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,...) ; 
 TYPE_4__ gui ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ menuBar ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ pullerBitmap ; 
 TYPE_1__* root_menu ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ vimShell ; 
 int FUNC8 () ; 

void
FUNC9()
{
    Pixmap oldpuller = None;

    if (menuBar == (Widget)0)
	return;

    if (pullerBitmap != None)
    {
	oldpuller = pullerBitmap;
	pullerBitmap = FUNC2(NULL);
    }
    FUNC3(root_menu, FALSE);

    {
	/* Iterate through the menubar menu items and get the height of
	 * each one.  The menu bar height is set to the maximum of all
	 * the heights.
	 */
	vimmenu_T *mp;
	int max_height = 9999;

	for (mp = root_menu; mp != NULL; mp = mp->next)
	{
	    if (FUNC6(mp->dname))
	    {
		Dimension height;

		FUNC1(mp->id,
			XtNheight, &height,
			NULL);
		if (height < max_height)
		    max_height = height;
	    }
	}
	if (max_height != 9999)
	{
	    /* Don't update the menu height when it was set at a fixed value */
	    if (!gui.menu_height_fixed)
	    {
		Dimension   space, border;

		FUNC1(menuBar,
			XtNvSpace,	&space,
			XtNborderWidth, &border,
			NULL);
		gui.menu_height = max_height + 2 * (space + border);
	    }
	}
    }
    /* Now, to simulate the window being resized.  Only, this
     * will resize the window to it's current state.
     *
     * There has to be a better way, but I do not see one at this time.
     * (David Harrison)
     */
    {
	Position w, h;

	FUNC1(vimShell,
		XtNwidth, &w,
		XtNheight, &h,
		NULL);
	FUNC4(w, h
#ifdef FEAT_XIM
						- xim_get_status_area_height()
#endif
		     );
    }
    FUNC5(FALSE, TRUE, RESIZE_VERT);
    FUNC7();
    if (oldpuller != None)
	FUNC0(gui.dpy, oldpuller);
}