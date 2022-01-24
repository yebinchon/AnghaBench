#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  config; } ;
struct TYPE_8__ {TYPE_1__* model; } ;
struct TYPE_7__ {char* cmd; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_STACK ; 
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (TYPE_3__*,char*) ; 
 char* FUNC4 (char*,char const*) ; 
 char* FUNC5 (char*,char*,...) ; 
 int FUNC6 (char*,char) ; 
 char* FUNC7 (char*,int) ; 

void FUNC8(void *user, void *p) {
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	const int delta = FUNC2 (core->config, "stack.delta");
	const int bits = FUNC2 (core->config, "asm.bits");
	const char sign = (delta < 0)? '+': '-';
	const int absdelta = FUNC0 (delta);
	char *cmd = FUNC5 ("%s%s ", PANEL_CMD_STACK, bits == 32 ? "w" : "q");
	int n = FUNC6 (panel->model->cmd, ' ');
	int i;
	for (i = 0; i < n; i++) {
		const char *s = FUNC7 (panel->model->cmd, i);
		if (!i) {
			continue;
		}
		cmd = FUNC4 (cmd, s);
	}
	panel->model->cmd = cmd;
	const char *cmdstr = FUNC3 (core, FUNC5 ("%s%c%d", cmd, sign, absdelta));
	FUNC1 (core, panel, cmdstr);
}