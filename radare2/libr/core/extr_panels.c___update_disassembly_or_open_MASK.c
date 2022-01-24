#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int x; int y; int w; int h; } ;
struct TYPE_19__ {int /*<<< orphan*/  offset; TYPE_2__* panels; } ;
struct TYPE_18__ {TYPE_1__* view; } ;
struct TYPE_17__ {int n_panels; } ;
struct TYPE_16__ {TYPE_9__ pos; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 int /*<<< orphan*/  PANEL_TITLE_DISASSEMBLY ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 

void FUNC8 (RCore *core) {
	RPanels *panels = core->panels;
	int i;
	bool create_new = true;
	for (i = 0; i < panels->n_panels; i++) {
		RPanel *p = FUNC1 (panels, i);
		if (FUNC0 (p, PANEL_CMD_DISASSEMBLY)) {
			FUNC6 (core, p, core->offset);
			create_new = false;
		}
	}
	if (create_new) {
		RPanel *panel = FUNC1 (panels, 0);
		int x0 = panel->view->pos.x;
		int y0 = panel->view->pos.y;
		int w0 = panel->view->pos.w;
		int h0 = panel->view->pos.h;
		int threshold_w = x0 + panel->view->pos.w;
		int x1 = x0 + w0 / 2 - 1;
		int w1 = threshold_w - x1;

		FUNC2 (core, 0, PANEL_TITLE_DISASSEMBLY, PANEL_CMD_DISASSEMBLY);
		RPanel *p0 = FUNC1 (panels, 0);
		FUNC5 (&p0->view->pos, x0, y0, w0 / 2, h0);

		RPanel *p1 = FUNC1 (panels, 1);
		FUNC5 (&p1->view->pos, x1, y0, w1, h0);

		FUNC4 (core, false);
		FUNC3 (core, 0);
	}
	FUNC7 (core, false, false);
}