#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  config; TYPE_1__* panels; TYPE_2__* panels_root; } ;
struct TYPE_11__ {int depth; TYPE_3__** history; } ;
struct TYPE_10__ {size_t selectedIndex; char* name; struct TYPE_10__** sub; } ;
struct TYPE_9__ {int /*<<< orphan*/ * cur_pdc_cache; int /*<<< orphan*/  pdc_caches; } ;
struct TYPE_8__ {TYPE_4__* panels_menu; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_2__ RPanelsRoot ;
typedef  TYPE_3__ RPanelsMenuItem ;
typedef  TYPE_4__ RPanelsMenu ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 

int FUNC8(void *user) {
	RCore *core = (RCore *)user;
	RPanelsRoot *root = core->panels_root;
	RPanelsMenu *menu = core->panels->panels_menu;
	RPanelsMenuItem *parent = menu->history[menu->depth - 1];
	RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
	const char *pdc_next = child->name;
	const char *pdc_now = FUNC2 (core->config, "cmd.pdc");
	if (!FUNC7 (pdc_next, pdc_now)) {
		return 0;
	}
	FUNC3 (core->config, "cmd.pdc", pdc_next);
	root->cur_pdc_cache = FUNC5 (root->pdc_caches, pdc_next, 0);
	if (!root->cur_pdc_cache) {
		Sdb *sdb = FUNC4 ();
		FUNC6 (root->pdc_caches, pdc_next, sdb, 0);
		root->cur_pdc_cache = sdb;
	}
	FUNC1 (core, false, false);
	FUNC0 (core, PANEL_MODE_DEFAULT);
	return 0;
}