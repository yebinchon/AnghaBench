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
struct TYPE_16__ {TYPE_1__* model; } ;
struct TYPE_15__ {int n_panels; scalar_t__ mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 scalar_t__ PANEL_MODE_MENU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7(RCore *core) {
	RPanels *ps = core->panels;
	int i;
	for (i = 0; i < ps->n_panels; i++) {
		RPanel *p = FUNC2 (ps, i);
		if (FUNC6 (p->model->cmd, "Help")) {
			FUNC1 (core, p, i);
			if (ps->mode == PANEL_MODE_MENU) {
				FUNC3 (core, PANEL_MODE_DEFAULT);
			}
			FUNC4 (core, false, false);
			return;
		}
	}
	FUNC0 (core);
	if (ps->mode == PANEL_MODE_MENU) {
		FUNC3 (core, PANEL_MODE_DEFAULT);
	}
	FUNC5 (ps);
}