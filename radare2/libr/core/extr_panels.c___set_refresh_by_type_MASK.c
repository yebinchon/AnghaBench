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
struct TYPE_14__ {TYPE_2__* panels; } ;
struct TYPE_13__ {TYPE_1__* view; } ;
struct TYPE_12__ {int n_panels; } ;
struct TYPE_11__ {int refresh; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char const*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC3(RCore *core, const char *cmd, bool clearCache) {
	RPanels *panels = core->panels;
	int i;
	for (i = 0; i < panels->n_panels; i++) {
		RPanel *p = FUNC1 (panels, i);
		if (!FUNC0 (p, cmd)) {
			continue;
		}
		p->view->refresh = true;
		if (clearCache) {
			FUNC2 (core, p, NULL);
		}
	}
}