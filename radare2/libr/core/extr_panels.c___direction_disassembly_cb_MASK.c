#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  offset; TYPE_3__* print; TYPE_4__* panels; } ;
struct TYPE_24__ {TYPE_2__* model; TYPE_1__* view; } ;
struct TYPE_23__ {int /*<<< orphan*/  mode; } ;
struct TYPE_22__ {int cols; int /*<<< orphan*/  cur_enabled; } ;
struct TYPE_21__ {int /*<<< orphan*/  addr; } ;
struct TYPE_20__ {int refresh; int /*<<< orphan*/  sx; } ;
typedef  TYPE_4__ RPanels ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;
typedef  int /*<<< orphan*/  RAsmOp ;
typedef  int /*<<< orphan*/  Direction ;

/* Variables and functions */
#define  DOWN 131 
#define  LEFT 130 
 int /*<<< orphan*/  PANEL_MODE_ZOOM ; 
#define  RIGHT 129 
#define  UP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 TYPE_5__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int*) ; 

void FUNC11(void *user, int direction) {
	RCore *core = (RCore *)user;
	RPanels *panels = core->panels;
	RPanel *cur = FUNC4 (panels);
	int cols = core->print->cols;
	cur->view->refresh = true;
	switch ((Direction)direction) {
	case LEFT:
		if (core->print->cur_enabled) {
			FUNC1 (core);
			FUNC6 (core);
			FUNC5 (core, cur, core->offset);
		} else if (panels->mode == PANEL_MODE_ZOOM) {
			cur->model->addr--;
		} else if (cur->view->sx > 0) {
			cur->view->sx--;
		}
		return;
	case RIGHT:
		if (core->print->cur_enabled) {
			FUNC2 (core);
			FUNC6 (core);
			FUNC5 (core, cur, core->offset);
		} else if (panels->mode == PANEL_MODE_ZOOM) {
			cur->model->addr++;
		} else {
			cur->view->sx++;
		}
		return;
	case UP:
		core->offset = cur->model->addr;
		if (core->print->cur_enabled) {
			FUNC3 (core);
			FUNC6 (core);
			FUNC5 (core, cur, core->offset);
		} else {
			FUNC10 (core, &cols);
			FUNC8 (core, -cols);
			FUNC5 (core, cur, core->offset);
		}
		return;
	case DOWN:
		core->offset = cur->model->addr;
		if (core->print->cur_enabled) {
			FUNC0 (core);
			FUNC6 (core);
			FUNC5 (core, cur, core->offset);
		} else {
			RAsmOp op;
			FUNC9 (core, &op, &cols);
			FUNC7 (core, core->offset + cols, 1);
			FUNC5 (core, cur, core->offset);
		}
		return;
	}
}