#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  addr; } ;
struct TYPE_19__ {TYPE_3__* panels_root; int /*<<< orphan*/  config; int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; TYPE_5__* panels; } ;
struct TYPE_18__ {TYPE_4__* model; TYPE_2__* view; } ;
struct TYPE_17__ {int /*<<< orphan*/ * can; } ;
struct TYPE_16__ {scalar_t__ cmdStrCache; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pdc_caches; int /*<<< orphan*/ * cur_pdc_cache; } ;
struct TYPE_13__ {int x; int y; int w; int h; } ;
struct TYPE_14__ {int sx; TYPE_1__ pos; int /*<<< orphan*/  sy; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_5__ RPanels ;
typedef  TYPE_6__ RPanel ;
typedef  TYPE_7__ RCore ;
typedef  int /*<<< orphan*/  RConsCanvas ;
typedef  TYPE_8__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char,int) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*) ; 

void FUNC17(RCore *core, RPanel *panel, char *cmdstr) {
	RPanels *panels = core->panels;
	RConsCanvas *can = panels->can;
	RAnalFunction *func = FUNC4 (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
	int sx = panel->view->sx;
	int sy = FUNC0 (panel->view->sy, 0);
	int x = panel->view->pos.x;
	int y = panel->view->pos.y;
	int w = panel->view->pos.w;
	int h = panel->view->pos.h;
	char *text = NULL;

	if (func) {
		if (core->panels_root->cur_pdc_cache) {
			FUNC15 (core->panels_root->cur_pdc_cache, FUNC8 (NULL, func->addr, false), FUNC10 (cmdstr), 0);
		} else {
			Sdb *sdb = FUNC14 ();
			const char *pdc_now = FUNC5 (core->config, "cmd.pdc");
			FUNC15 (sdb, FUNC8 (NULL, func->addr, false), FUNC10 (cmdstr), 0);
			core->panels_root->cur_pdc_cache = sdb;
			if (!FUNC13 (core->panels_root->pdc_caches, pdc_now)) {
				FUNC15 (core->panels_root->pdc_caches, FUNC10 (pdc_now), sdb, 0);
			}
		}
	}

	if (panel->model->cmdStrCache) {
		FUNC2 (panel);
	}

	(void) FUNC6 (can, x + 2, y + 2);

	if (sx < 0) {
		char *white = (char*)FUNC11 (' ', 128);
		int idx = FUNC1 (-sx, FUNC16 (white) - 1);
		white[idx] = 0;
		text = FUNC9 (FUNC10 (cmdstr),
				0, sy, w + sx - 3, h - 2 + sy);
		char *newText = FUNC12 (text, white);
		if (newText) {
			FUNC3 (text);
			text = newText;
		}
	} else {
		text = FUNC9 (FUNC10 (cmdstr),
				sx, sy, w + sx - 3, h - 2 + sy);
	}
	if (text) {
		FUNC7 (can, text);
		FUNC3 (text);
	}
}