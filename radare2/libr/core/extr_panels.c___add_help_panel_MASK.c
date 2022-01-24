#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * panels; } ;
struct TYPE_11__ {TYPE_1__* view; } ;
struct TYPE_10__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CONFIG_SIDEPANEL_W ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

void FUNC7(RCore *core) {
	//TODO: all these things done below are very hacky and refactoring needed
	RPanels *ps = core->panels;
	int h;
	const char *help = "Help";
	(void)FUNC6 (&h);
	FUNC0 (core);
	FUNC2 (core, 0, help, help);
	RPanel *p0 = FUNC1 (ps, 0);
	FUNC4 (&p0->view->pos, 0, 1, PANEL_CONFIG_SIDEPANEL_W, h - 1);
	FUNC3 (core, 0);
	FUNC5 (core, false, false);
}