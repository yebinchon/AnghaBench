#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  config; TYPE_1__* panels; } ;
struct TYPE_8__ {int /*<<< orphan*/ * can; } ;
typedef  TYPE_1__ RPanels ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC8(RCore *core) {
	if (FUNC0 (core)) {
		RPanels *panels = core->panels;

		FUNC5 (panels->can);
		panels->can = NULL;

		int ocolor = FUNC3 (core->config, "scr.color");

		FUNC7 (core, NULL, NULL, true);
		FUNC4 (core->config, "scr.color", ocolor);

		int h, w = FUNC6 (&h);
		panels->can = FUNC1 (core, w, h);
		FUNC2 (core, false, false);
	}
}