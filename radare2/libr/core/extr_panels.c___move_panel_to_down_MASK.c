#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int w; int /*<<< orphan*/  x; scalar_t__ h; scalar_t__ y; } ;
struct TYPE_16__ {TYPE_2__* panels; } ;
struct TYPE_15__ {TYPE_1__* view; } ;
struct TYPE_14__ {int n_panels; TYPE_3__** panel; } ;
struct TYPE_13__ {TYPE_6__ pos; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (int*) ; 

void FUNC6(RCore *core, RPanel *panel, int src) {
	RPanels *panels = core->panels;
	FUNC4 (core, src);
	panels->panel[panels->n_panels - 1] = panel;
	int h, w = FUNC5 (&h);
	int p_h = h / 2;
	int new_h = h - p_h;
	FUNC3 (&panel->view->pos, 0, p_h - 1, w, p_h - 1);
	int i = 0;
	for (; i < panels->n_panels - 1; i++) {
		RPanel *tmp = FUNC1 (panels, i);
		int t_y = ((double)tmp->view->pos.y / (double)h) * (double)new_h + 1;
		int t_h = ((double)tmp->view->pos.h / (double)h) * (double)new_h + 1;
		FUNC3 (&tmp->view->pos, tmp->view->pos.x, t_y, tmp->view->pos.w, t_h);
	}
	FUNC0 (core);
	FUNC2 (core, panels->n_panels - 1);
}