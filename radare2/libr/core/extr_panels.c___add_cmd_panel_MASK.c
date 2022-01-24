#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_4__* panels; } ;
struct TYPE_20__ {TYPE_1__* view; } ;
struct TYPE_19__ {TYPE_3__* panels_menu; } ;
struct TYPE_18__ {int depth; TYPE_2__** history; } ;
struct TYPE_17__ {size_t selectedIndex; int /*<<< orphan*/  name; struct TYPE_17__** sub; } ;
struct TYPE_16__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ RPanelsMenuItem ;
typedef  TYPE_3__ RPanelsMenu ;
typedef  TYPE_4__ RPanels ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CONFIG_SIDEPANEL_W ; 
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_5__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 

int FUNC11(void *user) {
	RCore *core = (RCore *)user;
	RPanels *panels = core->panels;
	if (!FUNC1 (core)) {
		return 0;
	}
	RPanelsMenu *menu = core->panels->panels_menu;
	RPanelsMenuItem *parent = menu->history[menu->depth - 1];
	RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
	char *cmd = FUNC4 (core, child->name);
	if (!cmd) {
		return 0;
	}
	int h;
	(void)FUNC10 (&h);
	FUNC0 (core);
	FUNC3 (core, 0, child->name, cmd);
	RPanel *p0 = FUNC2 (panels, 0);
	FUNC6 (&p0->view->pos, 0, 1, PANEL_CONFIG_SIDEPANEL_W, h - 1);
	FUNC5 (core, 0);
	FUNC8 (core, false, false);
	FUNC7 (core, PANEL_MODE_DEFAULT);
	FUNC9 (cmd);
	return 0;
}