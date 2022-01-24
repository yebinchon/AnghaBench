#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_3__* panels; } ;
struct TYPE_19__ {TYPE_2__* model; TYPE_1__* view; } ;
struct TYPE_18__ {scalar_t__ n_panels; } ;
struct TYPE_17__ {void* cmd; void* title; } ;
struct TYPE_16__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_3__ RPanels ;
typedef  TYPE_4__ RPanel ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,scalar_t__) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 char* FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  help_msg_panels ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 void* FUNC16 (void*,char*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 char* FUNC18 (char*,char const*) ; 
 int FUNC19 (char*,char) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 char* FUNC22 (char*,char*) ; 
 scalar_t__ FUNC23 (char*) ; 

bool FUNC24(RCore *core, const char *_name) {
	if (!core->panels) {
		return false;
	}
	char *config_path = FUNC2 (_name);
	if (!config_path) {
		char *tmp = FUNC18 ("No saved layout found for the name: %s", _name);
		(void)FUNC10 (core, tmp);
		FUNC12 (tmp);
		return false;
	}
	char *panels_config = FUNC14 (config_path, NULL);
	FUNC12 (config_path);
	if (!panels_config) {
		char *tmp = FUNC18 ("Layout is empty: %s", _name);
		(void)FUNC10 (core, tmp);
		FUNC12 (tmp);
		return false;
	}
	RPanels *panels = core->panels;
	FUNC4 (panels);
	panels->n_panels = 0;
	FUNC6 (core, 0);
	char *title, *cmd, *x, *y, *w, *h, *p_cfg = panels_config, *tmp_cfg;
	int i, tmp_count;
	tmp_cfg = FUNC5 (p_cfg, FUNC23 (p_cfg));
	tmp_count = FUNC19 (tmp_cfg, '\n');
	for (i = 0; i < tmp_count; i++) {
		if (FUNC0 (tmp_cfg)) {
			break;
		}
		title = FUNC22 (tmp_cfg, "Title");
		cmd = FUNC22 (tmp_cfg, "Cmd");
		(void)FUNC15 (cmd);
		x = FUNC22 (tmp_cfg, "x");
		y = FUNC22 (tmp_cfg, "y");
		w = FUNC22 (tmp_cfg, "w");
		h = FUNC22 (tmp_cfg, "h");
		RPanel *p = FUNC1 (panels, panels->n_panels);
		FUNC7 (&p->view->pos, FUNC11 (x), FUNC11 (y), FUNC11 (w),FUNC11 (h));
		FUNC3 (core, p, title, cmd);
		if (FUNC17 (cmd, "Help")) {
			p->model->title = FUNC16 (p->model->title, "Help");
			p->model->cmd = FUNC16 (p->model->cmd, "Help");
			RStrBuf *rsb = FUNC21 (NULL);
			FUNC13 (rsb, "Visual Ascii Art Panels", help_msg_panels);
			if (!rsb) {
				return false;
			}
			FUNC8 (p, FUNC20 (rsb));
		}
		tmp_cfg += FUNC23 (tmp_cfg) + 1;
	}
	p_cfg += FUNC23 (p_cfg) + 1;
	FUNC12 (panels_config);
	if (!panels->n_panels) {
		return false;
	}
	FUNC9 (core, true, false);
	return true;
}