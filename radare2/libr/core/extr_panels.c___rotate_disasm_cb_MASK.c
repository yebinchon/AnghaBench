#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  panels; } ;
struct TYPE_9__ {TYPE_1__* model; } ;
struct TYPE_8__ {int rotate; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DECOMPILER ; 
 int /*<<< orphan*/  PANEL_CMD_DECOMPILER_O ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *user, bool rev) {
	RCore *core = (RCore *)user;
	RPanel *p = FUNC0 (core->panels);

	//TODO: need to come up with a better solution but okay for now
	if (!FUNC3 (p->model->cmd, PANEL_CMD_DECOMPILER) ||
			!FUNC3 (p->model->cmd, PANEL_CMD_DECOMPILER_O)) {
		return;
	}

	if (rev) {
		if (!p->model->rotate) {
			p->model->rotate = 4;
		} else {
			p->model->rotate--;
		}
	} else {
		p->model->rotate++;
	}
	FUNC2 (core, p->model->rotate);
	FUNC1 (core, p);
}