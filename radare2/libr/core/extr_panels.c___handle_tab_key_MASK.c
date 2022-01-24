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
struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* view; } ;
struct TYPE_15__ {scalar_t__ mode; scalar_t__ fun; scalar_t__ curnode; scalar_t__ n_panels; } ;
struct TYPE_14__ {int refresh; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 scalar_t__ PANEL_FUN_SAKURA ; 
 scalar_t__ PANEL_FUN_SNOW ; 
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 scalar_t__ PANEL_MODE_MENU ; 
 scalar_t__ PANEL_MODE_ZOOM ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(RCore *core, bool shift) {
	FUNC4 (core, false);
	RPanels *panels = core->panels;
	RPanel *cur = FUNC1 (panels);
	FUNC7 (false);
	cur->view->refresh = true;
	if (!shift) {
		if (panels->mode == PANEL_MODE_MENU) {
			FUNC3 (core, 0);
			FUNC5 (core, PANEL_MODE_DEFAULT);
		} else if (panels->mode == PANEL_MODE_ZOOM) {
			FUNC3 (core, ++panels->curnode);
		} else {
			FUNC3 (core, ++panels->curnode);
		}
	} else {
		if (panels->mode == PANEL_MODE_MENU) {
			FUNC3 (core, panels->n_panels - 1);
			FUNC5 (core, PANEL_MODE_DEFAULT);
		} else if (panels->mode == PANEL_MODE_ZOOM) {
			FUNC3 (core, --panels->curnode);
		} else {
			FUNC3 (core, --panels->curnode);
		}
	}
	cur = FUNC1 (panels);
	if (FUNC0 (cur, PANEL_CMD_DISASSEMBLY)) {
		FUNC6 (core, false, false);
		return;
	}
	cur->view->refresh = true;
	if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
		FUNC2 (panels);
	}
}