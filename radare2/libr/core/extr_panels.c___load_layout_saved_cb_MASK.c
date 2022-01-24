#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* panels_menu; } ;
struct TYPE_11__ {TYPE_7__* panels; } ;
struct TYPE_10__ {int depth; TYPE_1__** history; } ;
struct TYPE_9__ {size_t selectedIndex; int /*<<< orphan*/  name; struct TYPE_9__** sub; } ;
typedef  TYPE_1__ RPanelsMenuItem ;
typedef  TYPE_2__ RPanelsMenu ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC5(void *user) {
	RCore *core = (RCore *)user;
	RPanelsMenu *menu = core->panels->panels_menu;
	RPanelsMenuItem *parent = menu->history[menu->depth - 1];
	RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
	if (!FUNC4 (core, child->name)) {
		FUNC0 (core);
		FUNC1 (core->panels);
	}
	FUNC2 (core, 0);
	core->panels->panels_menu->depth = 1;
	FUNC3 (core, PANEL_MODE_DEFAULT);
	return 0;
}