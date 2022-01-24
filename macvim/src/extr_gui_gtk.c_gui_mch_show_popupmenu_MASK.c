#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * submenu_id; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_5__ {int /*<<< orphan*/  event_time; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMenuPositionFunc ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_3__ gui ; 
 int /*<<< orphan*/ * xic ; 

void
FUNC19(vimmenu_T *menu)
{
# if defined(FEAT_XIM)
    /*
     * Append a submenu for selecting an input method.	This is
     * currently the only way to switch input methods at runtime.
     */
    if (xic != NULL && g_object_get_data(G_OBJECT(menu->submenu_id),
					 "vim-has-im-menu") == NULL)
    {
	GtkWidget   *menuitem;
	GtkWidget   *submenu;
	char_u	    *name;

	menuitem = gtk_separator_menu_item_new();
	gtk_widget_show(menuitem);
	gtk_menu_shell_append(GTK_MENU_SHELL(menu->submenu_id), menuitem);

	name = (char_u *)_("Input _Methods");
	name = CONVERT_TO_UTF8(name);
	menuitem = gtk_menu_item_new_with_mnemonic((const char *)name);
	CONVERT_TO_UTF8_FREE(name);
	gtk_widget_show(menuitem);

	submenu = gtk_menu_new();
	gtk_menu_item_set_submenu(GTK_MENU_ITEM(menuitem), submenu);
	gtk_menu_shell_append(GTK_MENU_SHELL(menu->submenu_id), menuitem);

	gtk_im_multicontext_append_menuitems(GTK_IM_MULTICONTEXT(xic),
					     GTK_MENU_SHELL(submenu));
	g_object_set_data(G_OBJECT(menu->submenu_id),
			  "vim-has-im-menu", GINT_TO_POINTER(TRUE));
    }
# endif /* FEAT_XIM */

    FUNC15(FUNC4(menu->submenu_id),
		   NULL, NULL,
		   (GtkMenuPositionFunc)NULL, NULL,
		   3U, gui.event_time);
}