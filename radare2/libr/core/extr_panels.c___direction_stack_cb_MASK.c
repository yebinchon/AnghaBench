#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  config; TYPE_1__* print; int /*<<< orphan*/ * panels; } ;
struct TYPE_12__ {TYPE_3__* model; TYPE_2__* view; } ;
struct TYPE_11__ {int addr; } ;
struct TYPE_10__ {int refresh; int /*<<< orphan*/  sx; } ;
struct TYPE_9__ {int /*<<< orphan*/  cur_enabled; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_4__ RPanel ;
typedef  TYPE_5__ RCore ;
typedef  int /*<<< orphan*/  Direction ;

/* Variables and functions */
#define  DOWN 131 
#define  LEFT 130 
#define  RIGHT 129 
#define  UP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC5(void *user, int direction) {
	RCore *core = (RCore *)user;
	RPanels *panels = core->panels;
	RPanel *cur = FUNC2 (panels);
	int cols = FUNC3 (core->config, "hex.cols");
	if (cols < 1) {
		cols = 16;
	}
	cur->view->refresh = true;
	switch ((Direction)direction) {
	case LEFT:
		if (core->print->cur_enabled) {
			FUNC0 (core);
		} else if (cur->view->sx > 0) {
			cur->view->sx--;
			cur->view->refresh = true;
		}
		return;
	case RIGHT:
		if (core->print->cur_enabled) {
			FUNC1 (core);
		} else {
			cur->view->sx++;
			cur->view->refresh = true;
		}
		return;
	case UP:
		FUNC4 (core->config, "stack.delta",
				FUNC3 (core->config, "stack.delta") + cols);
		cur->model->addr -= cols;
		return;
	case DOWN:
		FUNC4 (core->config, "stack.delta",
				FUNC3 (core->config, "stack.delta") - cols);
		cur->model->addr += cols;
		return;
	}
}