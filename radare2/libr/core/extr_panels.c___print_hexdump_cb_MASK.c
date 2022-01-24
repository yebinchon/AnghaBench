#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_14__ {int /*<<< orphan*/  offset; } ;
struct TYPE_13__ {TYPE_1__* model; } ;
struct TYPE_12__ {char* cmd; int /*<<< orphan*/  rotate; int /*<<< orphan*/  addr; int /*<<< orphan*/  cache; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 char* FUNC3 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,char*) ; 
 char** hexdump_rotate ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,char const*) ; 
 char* FUNC8 (char*,char*) ; 
 int FUNC9 (char*,char) ; 
 char* FUNC10 (char*,int) ; 

void FUNC11(void *user, void *p) {
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	char *cmdstr = FUNC2 (core, panel);
	if (!cmdstr) {
		ut64 o_offset = core->offset;
		if (!panel->model->cache) {
			core->offset = panel->model->addr;
			FUNC6 (core, core->offset, 1);
			FUNC5 (core);
		}
		char *base = hexdump_rotate[FUNC1(panel->model->rotate) % FUNC0 (hexdump_rotate)];
		char *cmd = FUNC8 ("%s ", base);
		int n = FUNC9 (panel->model->cmd, ' ');
		int i;
		for (i = 0; i < n; i++) {
			const char *s = FUNC10 (panel->model->cmd, i);
			if (!i) {
				continue;
			}
			cmd = FUNC7 (cmd, s);
		}
		panel->model->cmd = cmd;
		cmdstr = FUNC3 (core, panel, false);
		core->offset = o_offset;
	}
	FUNC4 (core, panel, cmdstr);
}