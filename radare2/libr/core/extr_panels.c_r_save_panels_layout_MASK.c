#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_4__* panels; } ;
struct TYPE_17__ {TYPE_3__* view; TYPE_1__* model; } ;
struct TYPE_16__ {int n_panels; } ;
struct TYPE_14__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_15__ {TYPE_2__ pos; } ;
struct TYPE_13__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  title; } ;
typedef  TYPE_4__ RPanels ;
typedef  TYPE_5__ RPanel ;
typedef  TYPE_6__ RCore ;
typedef  int /*<<< orphan*/  PJ ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 TYPE_5__* FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  __init_menu_saved_layout ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 char* FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 

void FUNC16(RCore *core) {
	int i;
	if (!core->panels) {
		return;
	}
	const char *name = FUNC4 (core, "Name for the layout: ");
	if (FUNC0 (name)) {
		(void)FUNC3 (core, "Name can't be empty!");
		return;
	}
	char *config_path = FUNC1 (name);
	RPanels *panels = core->panels;
	PJ *pj = FUNC13 ();
	for (i = 0; i < panels->n_panels; i++) {
		RPanel *panel = FUNC2 (panels, i);
		FUNC14 (pj);
		FUNC12 (pj, "Title", panel->model->title);
		FUNC12 (pj, "Cmd", panel->model->cmd);
		FUNC11 (pj, "x", panel->view->pos.x);
		FUNC11 (pj, "y", panel->view->pos.y);
		FUNC11 (pj, "w", panel->view->pos.w);
		FUNC11 (pj, "h", panel->view->pos.h);
		FUNC10 (pj);
	}
	FILE *fd = FUNC15 (config_path, "w");
	if (fd) {
		char *pjs = FUNC9 (pj);
		FUNC7 (fd, "%s\n", pjs);
		FUNC8 (pjs);
		FUNC6 (fd);
		FUNC5 (core, "File.Load Layout.Saved", __init_menu_saved_layout);
		(void)FUNC3 (core, "Panels layout saved!");
	}
	FUNC8 (config_path);
}