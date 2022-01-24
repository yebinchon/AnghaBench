#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_19__ {int /*<<< orphan*/  num; int /*<<< orphan*/  config; int /*<<< orphan*/ * panels; } ;
struct TYPE_18__ {TYPE_2__* view; } ;
struct TYPE_16__ {int x; } ;
struct TYPE_17__ {TYPE_1__ pos; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_DISASSEMBLY ; 
 int /*<<< orphan*/  PANEL_CMD_FUNCTION ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__ const,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static bool FUNC15(RCore *core, RPanel *panel, int x, int y, int *key) {
	RPanels *panels = core->panels;
	int h;
	(void)FUNC11 (&h);
	const int idx = FUNC3 (core, x, y);
	char *word = FUNC9 (core, panels, x, y);
	if (idx == -1) {
		return false;
	}
	FUNC6 (core, idx);
	FUNC7 (core, true, true);
	RPanel *ppos = FUNC2(panels, idx);
	if (word) {
		if (FUNC1 (panel, PANEL_CMD_FUNCTION) &&
				FUNC0 (word, FUNC14 (word))) {
			const ut64 addr = FUNC13 (core->num, word);
			FUNC12 (core, addr, 1);
			FUNC5 (core, PANEL_CMD_DISASSEMBLY, addr);
		}
		FUNC10 (core->config, "scr.highlight", word);
#if 1
// TODO implement sync
		{
			ut64 addr = FUNC13 (core->num, word);
			if (addr > 0) {
		//		__set_panel_addr (core, cur, addr);
				FUNC4 (core, addr);
			}
		}
#endif
		FUNC8 (word);
	}
	if (x >= ppos->view->pos.x && x < ppos->view->pos.x + 4) {
		*key = 'c';
		return false;
	}
	return true;
}