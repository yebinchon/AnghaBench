#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ mnemonic; int /*<<< orphan*/ * submenu_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * id; int /*<<< orphan*/  priority; struct TYPE_12__* actext; struct TYPE_12__* dname; struct TYPE_12__* parent; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  TYPE_1__ char_u ;
struct TYPE_13__ {int /*<<< orphan*/ * vimWindow; scalar_t__ menu_is_active; int /*<<< orphan*/ * vimMenuBar; } ;
typedef  int /*<<< orphan*/  PtArg_t ;

/* Variables and functions */
 int MB_LEN_MAX ; 
 TYPE_1__ NUL ; 
 int /*<<< orphan*/  Pk_KM_Alt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PtMenu ; 
 int /*<<< orphan*/  PtMenuButton ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pt_ARG_ACCEL_KEY ; 
 int /*<<< orphan*/  Pt_ARG_ACCEL_TEXT ; 
 int /*<<< orphan*/  Pt_ARG_BUTTON_TYPE ; 
 int /*<<< orphan*/  Pt_ARG_MENU_FLAGS ; 
 int /*<<< orphan*/  Pt_ARG_POINTER ; 
 int /*<<< orphan*/  Pt_ARG_TEXT_STRING ; 
 int /*<<< orphan*/  Pt_CB_ARM ; 
 int /*<<< orphan*/  Pt_CB_UNREALIZED ; 
 int /*<<< orphan*/  Pt_MENU_CHILD ; 
 TYPE_1__* Pt_MENU_RIGHT ; 
 TYPE_1__* Pt_TRUE ; 
 TYPE_5__ gui ; 
 int /*<<< orphan*/  gui_ph_handle_menu_unrealized ; 
 int /*<<< orphan*/  gui_ph_handle_pulldown_menu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,char) ; 

void
FUNC10(vimmenu_T *menu, int index)
{
    vimmenu_T	*parent = menu->parent;
    char_u	*accel_key;
    char_u	mnemonic_str[MB_LEN_MAX];
    int	    n;
    PtArg_t args[5];

    menu->submenu_id = menu->id = NULL;

    if (FUNC6(menu->name))
    {

	accel_key = FUNC9(menu->name, '&');
	if (accel_key != NULL)
	{
	    mnemonic_str[0] = accel_key[1];
	    mnemonic_str[1] = NUL;
	}

	/* Create the menu button */
	n = 0;
	FUNC4(&args[ n++ ], Pt_ARG_TEXT_STRING, menu->dname, 0);
	FUNC4(&args[ n++ ], Pt_ARG_ACCEL_TEXT, menu->actext, 0);
	if (accel_key != NULL)
	    FUNC4(&args[ n++ ], Pt_ARG_ACCEL_KEY, mnemonic_str, 0);
	FUNC4(&args[ n++ ], Pt_ARG_POINTER, menu, 0);

	if (parent != NULL)
	    FUNC4(&args[ n++ ], Pt_ARG_BUTTON_TYPE, Pt_MENU_RIGHT, 0);

	menu->id = FUNC2(PtMenuButton,
		(parent == NULL) ? gui.vimMenuBar : parent->submenu_id,
		n, args);

	FUNC0(menu->id, Pt_CB_ARM, gui_ph_handle_pulldown_menu, menu);

	/* Create the actual menu */
	n = 0;
	if (parent != NULL)
	    FUNC4(&args[ n++ ], Pt_ARG_MENU_FLAGS, Pt_TRUE, Pt_MENU_CHILD);

	menu->submenu_id = FUNC2(PtMenu, menu->id, n, args);

	if (parent == NULL)
	{
	    FUNC0(menu->submenu_id, Pt_CB_UNREALIZED,
		    gui_ph_handle_menu_unrealized, menu);

	    if (menu->mnemonic != 0)
	    {
		FUNC1(gui.vimWindow, FUNC8(menu->mnemonic),
			Pk_KM_Alt, 0, menu, gui_ph_handle_pulldown_menu);
	    }
	}

	FUNC5(menu->id, menu->priority);

	/* Redraw menubar here instead of gui_mch_draw_menubar */
	if (gui.menu_is_active)
	    FUNC3(menu->id);
    }
    else if (FUNC7(menu->name))
    {
	menu->submenu_id = FUNC2(PtMenu, gui.vimWindow, 0, NULL);
	FUNC0(menu->submenu_id, Pt_CB_UNREALIZED,
		gui_ph_handle_menu_unrealized, menu);
    }
}