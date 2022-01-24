#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  addr; } ;
struct TYPE_13__ {TYPE_2__* panels; TYPE_1__* panels_root; int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; } ;
struct TYPE_12__ {scalar_t__ autoUpdate; } ;
struct TYPE_11__ {scalar_t__ cur_pdc_cache; } ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(void *user, void *p) {
	//TODO: Refactoring
	//TODO: Also, __check_func_diff should use addr not name
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	RAnalFunction *func = FUNC5 (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
	char *cmdstr = NULL;
	if (func && core->panels_root->cur_pdc_cache) {
		cmdstr = FUNC7 ((char *)FUNC8 (core->panels_root->cur_pdc_cache,
					FUNC6 (NULL, func->addr, false), 0));
	}
	if (cmdstr) {
		FUNC3 (core, panel, cmdstr);
		return;
	}
	bool update = core->panels->autoUpdate && FUNC0 (core, panel);
	if (update) {
		cmdstr = FUNC2 (core, panel, false);
		FUNC4 (core, panel, cmdstr);
		return;
	}
	cmdstr = FUNC1 (core, panel);
	if (cmdstr) {
		FUNC3 (core, panel, cmdstr);
	}
}