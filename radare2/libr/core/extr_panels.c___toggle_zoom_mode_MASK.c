#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* panels; } ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ prevMode; scalar_t__ fun; } ;
typedef  TYPE_1__ RPanels ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 scalar_t__ PANEL_FUN_SAKURA ; 
 scalar_t__ PANEL_FUN_SNOW ; 
 scalar_t__ PANEL_MODE_DEFAULT ; 
 scalar_t__ PANEL_MODE_ZOOM ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int) ; 

void FUNC7(RCore *core) {
	RPanels *panels = core->panels;
	RPanel *cur = FUNC0 (panels);
	if (panels->mode != PANEL_MODE_ZOOM) {
		panels->prevMode = panels->mode;
		FUNC5 (core, PANEL_MODE_ZOOM);
		FUNC4 (cur);
		FUNC1 (panels);
	} else {
		FUNC5 (core, panels->prevMode);
		panels->prevMode = PANEL_MODE_DEFAULT;
		FUNC3 (cur);
		FUNC6 (core, false, false);
		if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
			FUNC2 (panels);
		}
	}
}