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
struct TYPE_10__ {TYPE_1__* cons; TYPE_2__* panels; } ;
struct TYPE_9__ {scalar_t__ autoUpdate; } ;
struct TYPE_8__ {int /*<<< orphan*/ * event_resize; TYPE_3__* event_data; } ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_3__ RCore ;
typedef  int /*<<< orphan*/ * RConsEvent ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ __do_panels_refreshOneShot ; 
 char* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 

void FUNC4(void *user, void *p) {
	RCore *core = (RCore *)user;
	RPanel *panel = (RPanel *)p;
	bool update = core->panels->autoUpdate && FUNC0 (core, panel);
	char *cmdstr = FUNC1 (core, panel);
	if (update || !cmdstr) {
		cmdstr = FUNC2 (core, panel, false);
	}
	core->cons->event_resize = NULL;
	core->cons->event_data = core;
	core->cons->event_resize = (RConsEvent) __do_panels_refreshOneShot;
	FUNC3 (core, panel, cmdstr);
}