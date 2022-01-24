#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  offset; int /*<<< orphan*/ * panels; } ;
struct TYPE_19__ {TYPE_17__* model; } ;
struct TYPE_18__ {int /*<<< orphan*/  type; void* cmd; void* title; } ;
typedef  int /*<<< orphan*/  RPanels ;
typedef  TYPE_1__ RPanel ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  RPanelModel ; 
 TYPE_17__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int) ; 
 void* FUNC10 (void*,char const*) ; 

void FUNC11(RCore *core, const char *title, const char *cmd) {
	RPanels *panels = core->panels;
	RPanel *cur = FUNC3 (panels);
	FUNC2 (cur);
	cur->model = FUNC0 (RPanelModel);
	cur->model->title = FUNC10 (cur->model->title, title);
	cur->model->cmd = FUNC10 (cur->model->cmd, cmd);
	FUNC4 (core, cur, NULL);
	FUNC6 (core, cur, core->offset);
	cur->model->type = PANEL_TYPE_DEFAULT;
	FUNC5 (core, cur);
	FUNC7 (cur);
	FUNC8 (panels, cur);
	FUNC1 (core, cur);
	FUNC9 (core, false, true);
}