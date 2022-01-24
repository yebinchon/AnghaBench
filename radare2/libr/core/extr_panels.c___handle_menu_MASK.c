#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_25__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_36__ {TYPE_6__* panels; } ;
struct TYPE_35__ {int /*<<< orphan*/  almighty_db; TYPE_5__* panels_menu; } ;
struct TYPE_34__ {int depth; TYPE_2__* root; TYPE_4__** history; } ;
struct TYPE_33__ {size_t selectedIndex; int /*<<< orphan*/  (* cb ) (TYPE_7__*) ;struct TYPE_33__** sub; int /*<<< orphan*/  n_sub; } ;
struct TYPE_32__ {int refresh; } ;
struct TYPE_31__ {size_t selectedIndex; size_t n_sub; TYPE_1__** sub; } ;
struct TYPE_30__ {TYPE_3__* view; } ;
struct TYPE_29__ {int /*<<< orphan*/  (* cb ) (TYPE_7__*) ;} ;
typedef  TYPE_4__ RPanelsMenuItem ;
typedef  TYPE_5__ RPanelsMenu ;
typedef  TYPE_6__ RPanels ;
typedef  TYPE_7__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 TYPE_25__* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 

void FUNC18(RCore *core, const int key) {
	RPanels *panels = core->panels;
	RPanelsMenu *menu = panels->panels_menu;
	RPanelsMenuItem *parent = menu->history[menu->depth - 1];
	RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
	FUNC11 (false);
	switch (key) {
	case 'h':
		if (menu->depth <= 2) {
			if (menu->root->selectedIndex > 0) {
				menu->root->selectedIndex--;
			} else {
				menu->root->selectedIndex = menu->root->n_sub - 1;
			}
			if (menu->depth == 2) {
				menu->depth = 1;
				FUNC8 (core, false, false);
				(void)(menu->root->sub[menu->root->selectedIndex]->cb (core));
			}
		} else {
			FUNC2 (core);
		}
		break;
	case 'j':
		{
			if (menu->depth == 1) {
				(void)(child->cb (core));
			} else {
				parent->selectedIndex = FUNC0 (parent->n_sub - 1, parent->selectedIndex + 1);
				FUNC10 (core, menu, parent);
			}
		}
		break;
	case 'k':
		{
			if (menu->depth < 2) {
				break;
			}
			RPanelsMenuItem *parent = menu->history[menu->depth - 1];
			if (parent->selectedIndex > 0) {
				parent->selectedIndex--;
				FUNC10 (core, menu, parent);
			} else if (menu->depth == 2) {
				menu->depth--;
				FUNC8 (core, false, false);
			}
		}
		break;
	case 'l':
		{
			if (menu->depth == 1) {
				menu->root->selectedIndex++;
				menu->root->selectedIndex %= menu->root->n_sub;
				break;
			}
			if (parent->sub[parent->selectedIndex]->sub) {
				(void)(parent->sub[parent->selectedIndex]->cb (core));
			} else {
				menu->root->selectedIndex++;
				menu->root->selectedIndex %= menu->root->n_sub;
				menu->depth = 1;
				FUNC8 (core, false, false);
				(void)(menu->root->sub[menu->root->selectedIndex]->cb (core));
			}
		}
		break;
	case 'm':
	case 'q':
	case 'Q':
	case -1:
		if (panels->panels_menu->depth > 1) {
			FUNC2 (core);
		} else {
			FUNC7 (core, PANEL_MODE_DEFAULT);
			FUNC3 (panels)->view->refresh = true;
		}
		break;
	case '$':
		FUNC12 (core, "dr PC=$$");
		break;
	case ' ':
	case '\r':
	case '\n':
		(void)(child->cb (core));
		break;
	case 9:
		FUNC6 (core, false);
		break;
	case 'Z':
		FUNC6 (core, true);
		break;
	case ':':
		FUNC5 (core, panels);
		break;
	case '?':
		FUNC9 (core);
	case '"':
		FUNC1 (core, FUNC4 (panels, 0), panels->almighty_db);
		FUNC7 (core, PANEL_MODE_DEFAULT);
		break;
	}
}