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
struct TYPE_13__ {TYPE_3__* print; TYPE_1__* dbg; int /*<<< orphan*/ * panels; } ;
struct TYPE_12__ {TYPE_2__* view; } ;
struct TYPE_11__ {int cur; int /*<<< orphan*/  cur_enabled; } ;
struct TYPE_10__ {int refresh; int /*<<< orphan*/  sx; } ;
struct TYPE_9__ {int regcols; } ;
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

void FUNC3(void *user, int direction) {
	RCore *core = (RCore *)user;
	RPanels *panels = core->panels;
	RPanel *cur = FUNC2 (panels);
	int cols = core->dbg->regcols;
	cols = cols > 0 ? cols : 3;
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
		if (core->print->cur_enabled) {
			int tmp = core->print->cur;
			tmp -= cols;
			if (tmp >= 0) {
				core->print->cur = tmp;
			}
		}
		return;
	case DOWN:
		if (core->print->cur_enabled) {
			core->print->cur += cols;
		}
		return;
	}
}