#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_3__* panels; } ;
struct TYPE_24__ {TYPE_2__* view; } ;
struct TYPE_23__ {int /*<<< orphan*/  almighty_db; } ;
struct TYPE_21__ {int y; int x; int w; } ;
struct TYPE_22__ {TYPE_1__ pos; } ;
typedef  TYPE_3__ RPanels ;
typedef  TYPE_4__ RPanel ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (TYPE_3__*,int const) ; 
 int FUNC4 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (TYPE_5__*,TYPE_3__*,int,int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static bool FUNC12(RCore *core, int x, int y) {
	RPanels *panels = core->panels;
	const int idx = FUNC4 (core, x, y);
	char *word = FUNC10 (core, panels, x, y);
	if (idx == -1) {
		return false;
	}
	RPanel *ppos = FUNC3(panels, idx);
	const int TITLE_Y = ppos->view->pos.y + 2;
	if (y == TITLE_Y && FUNC11 (word, " X ")) {
		int fx = ppos->view->pos.x;
		int fX = fx + ppos->view->pos.w;
		FUNC5 (core, idx);
		FUNC7 (core, true, true);
		if (x > (fX - 13) && x < fX) {
			FUNC8 (core, FUNC2 (panels));
		} else if (x > fx && x < (fx + 5)) {
			FUNC1 (core, ppos, idx);
		} else {
			FUNC0 (core, FUNC3 (panels, 0), panels->almighty_db);
			FUNC6 (core, PANEL_MODE_DEFAULT);
		}
		FUNC7 (core, false, false);
		FUNC9 (word);
		return true;
	}
	FUNC9 (word);
	return false;
}