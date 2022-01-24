#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* panels; } ;
struct TYPE_13__ {TYPE_3__* view; TYPE_1__* model; } ;
struct TYPE_12__ {int /*<<< orphan*/ * can; } ;
struct TYPE_10__ {int x; int y; int w; int h; } ;
struct TYPE_11__ {int sx; TYPE_2__ pos; int /*<<< orphan*/  sy; } ;
struct TYPE_9__ {char* readOnly; } ;
typedef  TYPE_4__ RPanels ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;
typedef  int /*<<< orphan*/  RConsCanvas ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,int,int,int,int) ; 
 scalar_t__ FUNC6 (char,int) ; 
 char* FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

void FUNC9(RCore *core, RPanel *panel) {
	char *read_only = panel->model->readOnly;
	char *text = NULL;
	int sx = panel->view->sx;
	int sy = FUNC0 (panel->view->sy, 0);
	int x = panel->view->pos.x;
	int y = panel->view->pos.y;
	int w = panel->view->pos.w;
	int h = panel->view->pos.h;
	RPanels *panels = core->panels;
	RConsCanvas *can = panels->can;
	(void) FUNC3 (can, x + 2, y + 2);
	if (sx < 0) {
		char *white = (char*)FUNC6 (' ', 128);
		int idx = FUNC1 (-sx, FUNC8 (white) - 1);
		white[idx] = 0;
		text = FUNC5 (read_only,
				0, sy, w + sx - 3, h - 2 + sy);
		char *newText = FUNC7 (text, white);
		if (newText) {
			FUNC2 (text);
			text = newText;
		}
	} else {
		text = FUNC5 (read_only,
				sx, sy, w + sx - 3, h - 2 + sy);
	}
	if (text) {
		FUNC4 (can, text);
		FUNC2 (text);
	}
}