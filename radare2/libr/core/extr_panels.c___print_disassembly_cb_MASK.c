#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_20__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  config; TYPE_1__* print; } ;
struct TYPE_19__ {TYPE_4__* model; TYPE_3__* view; } ;
struct TYPE_18__ {char* cmd; int /*<<< orphan*/  addr; } ;
struct TYPE_16__ {scalar_t__ h; } ;
struct TYPE_17__ {TYPE_2__ pos; } ;
struct TYPE_15__ {long long screen_bounds; } ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;

/* Variables and functions */
 char* FUNC0 (TYPE_6__*,TYPE_5__*) ; 
 char* FUNC1 (TYPE_6__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,char*,scalar_t__) ; 

void FUNC8(void *user, void *p) {
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	core->print->screen_bounds = 1LL;
	char *cmdstr = FUNC0 (core, panel);
	if (cmdstr) {
		FUNC2 (core, panel, cmdstr);
		return;
	}
	char *ocmd = panel->model->cmd;
	panel->model->cmd = FUNC7 ("%s %d", panel->model->cmd, panel->view->pos.h - 3);
	ut64 o_offset = core->offset;
	core->offset = panel->model->addr;
	FUNC6 (core, panel->model->addr, 1);
	if (FUNC4 (core->config, "cfg.debug")) {
		FUNC5 (core, ".dr*", 0);
	}
	cmdstr = FUNC1 (core, panel, false);
	core->offset = o_offset;
	FUNC3 (panel->model->cmd);
	panel->model->cmd = ocmd;
	FUNC2 (core, panel, cmdstr);
}