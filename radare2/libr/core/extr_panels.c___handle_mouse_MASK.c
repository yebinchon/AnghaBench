#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_2__* panels; } ;
struct TYPE_25__ {TYPE_1__* model; } ;
struct TYPE_24__ {scalar_t__ mode; int mouse_on_edge_x; int mouse_on_edge_y; } ;
struct TYPE_23__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  title; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int INT8_MAX ; 
 scalar_t__ PANEL_MODE_MENU ; 
 scalar_t__ FUNC0 (TYPE_4__*,int) ; 
 int FUNC1 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_3__*,int,int,int*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int*,int*) ; 
 int FUNC13 (int*) ; 

bool FUNC14(RCore *core, RPanel *panel, int *key) {
	const int MENU_Y = 1;
	RPanels *panels = core->panels;
	if (FUNC4 (core)) {
		return true;
	}
	if (*key == 0) {
		int x, y;
		if (FUNC12 (&x, &y)) {
			if (y == MENU_Y && FUNC9 (core, x, y)) {
				return true;
			}
			if (panels->mode == PANEL_MODE_MENU) {
				FUNC7 (core, x, y);
				return true;
			}
			if (FUNC6 (core, x, y)) {
				return true;
			}
			if (FUNC0 (core, x) || FUNC2 (core, y)) {
				panels->mouse_on_edge_x = false;
				panels->mouse_on_edge_y = false;
				return true;
			}
			panels->mouse_on_edge_x = FUNC1 (core, x, y);
			panels->mouse_on_edge_y = FUNC3 (core, x, y);
			if (panels->mouse_on_edge_x || panels->mouse_on_edge_y) {
				return true;
			}
			if (FUNC8 (core, panel, x, y, key)) {
				return true;
			}
			int h, w = FUNC13 (&h);
			if (y == h) {
				RPanel *p = FUNC5 (panels);
				FUNC10 (core, p, p->model->title, p->model->cmd);
			} else if (x == w) {
				RPanel *p = FUNC5 (panels);
				FUNC11 (core, p, p->model->title, p->model->cmd);
			}
		} else {
			return false;
		}
	}
	if (*key == INT8_MAX) {
		*key = '"';
		return false;
	}
	return false;
}