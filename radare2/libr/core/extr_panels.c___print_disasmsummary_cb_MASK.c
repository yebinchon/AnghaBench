#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* model; } ;
struct TYPE_15__ {scalar_t__ autoUpdate; } ;
struct TYPE_14__ {scalar_t__ cmdStrCache; scalar_t__ cache; } ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 char* FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 char* FUNC2 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,char*) ; 

void FUNC5 (void *user, void *p) {
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	bool update = core->panels->autoUpdate && FUNC0 (core, panel);
	char *cmdstr = FUNC1 (core, panel);
	if (update || !cmdstr) {
		cmdstr = FUNC2 (core, panel, true);
		if (panel->model->cache && panel->model->cmdStrCache) {
			FUNC3 (panel);
		}
	}
	FUNC4 (core, panel, cmdstr);
}