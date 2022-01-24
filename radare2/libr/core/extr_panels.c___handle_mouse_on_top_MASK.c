#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* panels; } ;
struct TYPE_16__ {TYPE_2__* panels_menu; } ;
struct TYPE_15__ {int depth; TYPE_1__** history; } ;
struct TYPE_14__ {int selectedIndex; int /*<<< orphan*/  (* cb ) (TYPE_4__*) ;struct TYPE_14__** sub; } ;
typedef  TYPE_1__ RPanelsMenuItem ;
typedef  TYPE_2__ RPanelsMenu ;
typedef  TYPE_3__ RPanels ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  PANEL_MODE_MENU ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (TYPE_4__*,TYPE_3__*,int,int) ; 
 char** menus ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

bool FUNC11 (RCore *core, int x, int y) {
	RPanels *panels = core->panels;
	char *word = FUNC8 (core, panels, x, y);
	int i;
	for (i = 0; i < FUNC0 (menus); i++) {
		if (!FUNC9 (word, menus[i])) {
			FUNC4 (core, PANEL_MODE_MENU);
			FUNC1 (core);
			RPanelsMenu *menu = panels->panels_menu;
			RPanelsMenuItem *parent = menu->history[menu->depth - 1];
			parent->selectedIndex = i;
			RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
			(void)(child->cb (core));
			FUNC5 (core, false, false);
			FUNC7 (word);
			return true;
		}
	}
	if (!FUNC9 (word, "Tab")) {
		FUNC2 (core);
		FUNC7 (word);
		return true;
	}
	if (word[0] == '[' && word[1] && word[2] == ']') {
		return true;
	}
	if (FUNC6 (word)) {
		FUNC3 (core, word[0]);
		return true;
	}
	return false;
}