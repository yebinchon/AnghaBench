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
struct TYPE_2__ {int /*<<< orphan*/  starting; int /*<<< orphan*/ * menubar; int /*<<< orphan*/ * menubar_h; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ using_gnome ; 

void
FUNC4(int showit)
{
    GtkWidget *widget;

# ifdef FEAT_GUI_GNOME
    if (using_gnome)
	widget = gui.menubar_h;
    else
# endif
	widget = gui.menubar;

    /* Do not disable the menu while starting up, otherwise F10 doesn't work. */
    if (!showit != !FUNC0(widget) && !gui.starting)
    {
	if (showit)
	    FUNC2(widget);
	else
	    FUNC1(widget);

	FUNC3(0, 0);
    }
}