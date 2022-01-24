#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int w; int /*<<< orphan*/  h; int /*<<< orphan*/  y; scalar_t__ x; } ;
struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* view; } ;
struct TYPE_15__ {scalar_t__ curnode; } ;
struct TYPE_14__ {TYPE_8__ pos; } ;
typedef  TYPE_2__ RPanels ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int) ; 

void FUNC6(RCore *core, RPanel *p, const char *name, const char *cmd) {
	RPanels *panels = core->panels;
	if (!FUNC0 (core)) {
		return;
	}
	FUNC3 (core, panels->curnode + 1, name, cmd);
	RPanel *next = FUNC2 (panels, panels->curnode + 1);
	int owidth = p->view->pos.w;
	p->view->pos.w = owidth / 2 + 1;
	FUNC4 (&next->view->pos, p->view->pos.x + p->view->pos.w - 1,
			p->view->pos.y, owidth - p->view->pos.w + 1, p->view->pos.h);
	FUNC1 (core);
	FUNC5 (core, false, true);
}