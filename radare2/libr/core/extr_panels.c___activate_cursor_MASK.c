#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* print; int /*<<< orphan*/ * panels; } ;
struct TYPE_20__ {TYPE_3__* view; TYPE_1__* model; } ;
struct TYPE_19__ {int refresh; } ;
struct TYPE_18__ {int /*<<< orphan*/  cur_enabled; } ;
struct TYPE_17__ {int cache; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_4__ RPanel ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int,char*) ; 

void FUNC8(RCore *core) {
	RPanels *panels = core->panels;
	RPanel *cur = FUNC0 (panels);
	if (FUNC2 (cur) || FUNC1 (core, cur)) {
		if (cur->model->cache) {
			if (FUNC7 (core, 1, "You need to turn off cache to use cursor. Turn off now?(Y/n)")) {
				cur->model->cache = false;
				FUNC4 (core, cur, NULL);
				(void)FUNC6 (core, "Cache is off and cursor is on");
				FUNC5 (core, !core->print->cur_enabled);
				cur->view->refresh = true;
				FUNC3 (cur);
			} else {
				(void)FUNC6 (core, "You can always toggle cache by \'&\' key");
			}
			return;
		}
		FUNC5 (core, !core->print->cur_enabled);
		cur->view->refresh = true;
	} else {
		(void)FUNC6 (core, "Cursor is not available for the current panel.");
	}
}