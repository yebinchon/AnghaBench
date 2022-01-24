#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_26__ {int /*<<< orphan*/  n_panels; } ;
struct TYPE_25__ {TYPE_7__* panels; int /*<<< orphan*/  config; TYPE_1__* anal; scalar_t__ const offset; } ;
struct TYPE_24__ {TYPE_2__* view; TYPE_3__* model; } ;
struct TYPE_23__ {scalar_t__ baseAddr; void* cmd; void* title; int /*<<< orphan*/ * funcName; int /*<<< orphan*/ * rotateCb; scalar_t__ rotate; int /*<<< orphan*/  type; } ;
struct TYPE_22__ {int refresh; scalar_t__ curpos; } ;
struct TYPE_21__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RPanelView ;
typedef  TYPE_3__ RPanelModel ;
typedef  TYPE_4__ RPanel ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_STACK ; 
 int /*<<< orphan*/  PANEL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  R_REG_NAME_SP ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ const FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC12 (void*,char const*) ; 

void FUNC13(RCore *core, RPanel *p, const char *title, const char *cmd) {
	RPanelModel *m = p->model;
	RPanelView *v = p->view;
	m->type = PANEL_TYPE_DEFAULT;
	m->rotate = 0;
	v->curpos = 0;
	FUNC5 (core, p, core->offset);
	m->rotateCb = NULL;
	FUNC3 (core, p, NULL);
	FUNC8(p, NULL);
	m->funcName = NULL;
	v->refresh = true;
	if (title) {
		m->title = FUNC12 (m->title, title);
		if (cmd) {
			m->cmd = FUNC12 (m->cmd, cmd);
		} else {
			m->cmd = FUNC12 (m->cmd, "");
		}
	} else if (cmd) {
		m->title = FUNC12 (m->title, cmd);
		m->cmd = FUNC12 (m->cmd, cmd);
	} else {
		m->title = FUNC12 (m->title, "");
		m->cmd = FUNC12 (m->cmd, "");
	}
	FUNC6 (p);
	if (FUNC0 (m->cmd)) {
		FUNC4 (core, p);
		FUNC7 (core->panels, p);
		if (FUNC2 (p, PANEL_CMD_STACK)) {
			const char *sp = FUNC10 (core->anal->reg, R_REG_NAME_SP);
			const ut64 stackbase = FUNC11 (core->anal->reg, sp);
			m->baseAddr = stackbase;
			FUNC5 (core, p, stackbase - FUNC9 (core->config, "stack.delta"));
		}
	}
	core->panels->n_panels++;
	FUNC1 (core, p);
	return;
}