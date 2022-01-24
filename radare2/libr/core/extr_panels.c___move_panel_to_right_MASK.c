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
struct TYPE_17__ {int y; int h; scalar_t__ w; scalar_t__ x; } ;
struct TYPE_16__ {TYPE_2__* panels; } ;
struct TYPE_15__ {TYPE_1__* view; } ;
struct TYPE_14__ {int n_panels; int columnWidth; TYPE_3__** panel; } ;
struct TYPE_13__ {TYPE_6__ pos; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (int*) ; 

void FUNC6(RCore *core, RPanel *panel, int src) {
	RPanels *panels = core->panels;
	FUNC4 (core, src);
	panels->panel[panels->n_panels - 1] = panel;
	int h, w = FUNC5 (&h);
	int p_w = w - panels->columnWidth;
	p_w /= 2;
	int p_x = w - p_w;
	FUNC3 (&panel->view->pos, p_x - 1, 1, p_w + 1, h - 1);
	int new_w = w - p_w;
	int i = 0;
	for (; i < panels->n_panels - 1; i++) {
		RPanel *tmp = FUNC1 (panels, i);
		int t_x = ((double)tmp->view->pos.x / (double)w) * (double)new_w;
		int t_w = ((double)tmp->view->pos.w / (double)w) * (double)new_w + 1;
		FUNC3 (&tmp->view->pos, t_x, tmp->view->pos.y, t_w, tmp->view->pos.h);
	}
	FUNC0 (core);
	FUNC2 (core, panels->n_panels - 1);
}