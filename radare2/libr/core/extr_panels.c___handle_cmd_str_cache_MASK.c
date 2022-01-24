#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* print; int /*<<< orphan*/  panels; } ;
struct TYPE_15__ {TYPE_1__* model; } ;
struct TYPE_14__ {int cur_enabled; } ;
struct TYPE_13__ {int cache; } ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_4__*,char*) ; 

char *FUNC8(RCore *core, RPanel *panel, bool force_cache) {
	char *cmd = FUNC2 (core, panel);
	bool b = core->print->cur_enabled && FUNC3 (core->panels) != panel;
	if (b) {
		core->print->cur_enabled = false;
	}
	char *out = FUNC7 (core, cmd);
	FUNC6 (NULL);
	if (force_cache) {
		panel->model->cache = true;
	}
	if (FUNC1 (out)) {
		FUNC4 (core, panel, out);
	} else {
		FUNC0 (out);
	}
	FUNC5 (cmd);
	if (b) {
		core->print->cur_enabled = true;
	}
	return out;
}