#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * id; int /*<<< orphan*/ * submenu_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * strings; int /*<<< orphan*/  dname; struct TYPE_8__* parent; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_9__ {int /*<<< orphan*/  toolbar; } ;
typedef  int /*<<< orphan*/  GtkToolbar ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t MENU_INDEX_TIP ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ gtk_socket_id ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_4__ gui ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  menu_item_activate ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  toolbar_button_focus_in_event ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC21(vimmenu_T *menu, int idx)
{
    vimmenu_T *parent;

    parent = menu->parent;

# ifdef FEAT_TOOLBAR
    if (menu_is_toolbar(parent->name))
    {
	GtkToolbar *toolbar;

	toolbar = GTK_TOOLBAR(gui.toolbar);
	menu->submenu_id = NULL;

	if (menu_is_separator(menu->name))
	{
	    gtk_toolbar_insert_space(toolbar, idx);
	    menu->id = NULL;
	}
	else
	{
	    char_u *text;
	    char_u *tooltip;

	    text    = CONVERT_TO_UTF8(menu->dname);
	    tooltip = CONVERT_TO_UTF8(menu->strings[MENU_INDEX_TIP]);
	    if (tooltip != NULL && !utf_valid_string(tooltip, NULL))
		/* Invalid text, can happen when 'encoding' is changed.  Avoid
		 * a nasty GTK error message, skip the tooltip. */
		CONVERT_TO_UTF8_FREE(tooltip);

	    menu->id = gtk_toolbar_insert_item(
		    toolbar,
		    (const char *)text,
		    (const char *)tooltip,
		    NULL,
		    create_menu_icon(menu, gtk_toolbar_get_icon_size(toolbar)),
		    G_CALLBACK(&menu_item_activate),
		    menu,
		    idx);

	    if (gtk_socket_id != 0)
		gtk_signal_connect(GTK_OBJECT(menu->id), "focus_in_event",
			GTK_SIGNAL_FUNC(toolbar_button_focus_in_event), NULL);

	    CONVERT_TO_UTF8_FREE(text);
	    CONVERT_TO_UTF8_FREE(tooltip);
	}
    }
    else
# endif /* FEAT_TOOLBAR */
    {
	/* No parent, must be a non-menubar menu */
	if (parent == NULL || parent->submenu_id == NULL)
	    return;

	/* Make place for the possible tearoff handle item.  Not in the popup
	 * menu, it doesn't have a tearoff item. */
	if (!FUNC16(parent->name))
	    ++idx;

	if (FUNC17(menu->name))
	{
	    /* Separator: Just add it */
	    menu->id = FUNC9();
	    FUNC14(menu->id, FALSE);
	    FUNC15(menu->id);
	    FUNC8(FUNC2(parent->submenu_id), menu->id, idx);

	    return;
	}

	/* Add textual menu item. */
	FUNC19(menu, parent->submenu_id);
	FUNC15(menu->id);
	FUNC8(FUNC2(parent->submenu_id), menu->id, idx);

	if (menu->id != NULL)
	    FUNC10(FUNC3(menu->id), "activate",
			       FUNC4(menu_item_activate), menu);
    }
}