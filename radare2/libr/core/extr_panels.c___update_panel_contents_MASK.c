#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_4__* panels; TYPE_1__* print; } ;
struct TYPE_16__ {TYPE_3__* view; } ;
struct TYPE_15__ {int /*<<< orphan*/ * can; } ;
struct TYPE_13__ {int x; int y; int w; int h; } ;
struct TYPE_14__ {int sx; int sy; int curpos; TYPE_2__ pos; } ;
struct TYPE_12__ {scalar_t__ cur_enabled; } ;
typedef  TYPE_4__ RPanels ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;
typedef  int /*<<< orphan*/  RConsCanvas ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_GRAPH ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (char const*,int,int,int,int) ; 
 scalar_t__ FUNC8 (char,int) ; 
 char* FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

void FUNC11(RCore *core, RPanel *panel, const char *cmdstr) {
	bool b = FUNC3 (core, panel) && core->print->cur_enabled;
	int sx = b ? -2 :panel->view->sx;
	int sy = FUNC0 (panel->view->sy, 0);
	int x = panel->view->pos.x;
	int y = panel->view->pos.y;
	int w = panel->view->pos.w;
	int h = panel->view->pos.h;
	int graph_pad = FUNC2 (panel, PANEL_CMD_GRAPH) ? 1 : 0;
	char *text = NULL;
	RPanels *panels = core->panels;
	RConsCanvas *can = panels->can;
	(void) FUNC5 (can, x + 2, y + 2);
	if (sx < 0) {
		char *white = (char*)FUNC8 (' ', 128);
		int idx = FUNC1 (-sx, FUNC10 (white) - 1);
		white[idx] = 0;
		text = FUNC7 (cmdstr,
				0, sy + graph_pad, w + sx - 3, h - 2 + sy);
		char *newText = FUNC9 (text, white);
		if (newText) {
			FUNC4 (text);
			text = newText;
		}
	} else {
		text = FUNC7 (cmdstr,
				sx, sy + graph_pad, w + sx - 3, h - 2 + sy);
	}
	if (text) {
		FUNC6 (can, text);
		FUNC4 (text);
	}
	if (b) {
		int sub = panel->view->curpos - panel->view->sy;
		(void) FUNC5 (can, panel->view->pos.x + 2, panel->view->pos.y + 2 + sub);
		FUNC6 (can, "*");
	}
}