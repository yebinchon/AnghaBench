#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * id; int /*<<< orphan*/ * submenu_id; int /*<<< orphan*/  name; TYPE_1__* parent; } ;
typedef  TYPE_2__ vimmenu_T ;
struct TYPE_8__ {int /*<<< orphan*/  toolbar; int /*<<< orphan*/ * menubar; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__ gui ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(vimmenu_T *menu)
{
    /* Don't let gtk_container_remove automatically destroy menu->id. */
    if (menu->id != NULL)
	FUNC2(menu->id);

    /* Workaround for a spurious gtk warning in Ubuntu: "Trying to remove
     * a child that doesn't believe we're it's parent."
     * Remove widget from gui.menubar before destroying it. */
    if (menu->id != NULL && gui.menubar != NULL
			    && FUNC8(menu->id) == gui.menubar)
	FUNC5(FUNC0(gui.menubar), menu->id);

# ifdef FEAT_TOOLBAR
    if (menu->parent != NULL && menu_is_toolbar(menu->parent->name))
    {
	if (menu_is_separator(menu->name))
	    gtk_toolbar_remove_space(GTK_TOOLBAR(gui.toolbar),
				     get_menu_position(menu));
	else if (menu->id != NULL)
	    gtk_widget_destroy(menu->id);
    }
    else
# endif /* FEAT_TOOLBAR */
    {
	if (menu->submenu_id != NULL)
	    FUNC7(menu->submenu_id);

	if (menu->id != NULL)
	    FUNC7(menu->id);
    }

    if (menu->id != NULL)
	FUNC3(menu->id);
    menu->submenu_id = NULL;
    menu->id = NULL;
}