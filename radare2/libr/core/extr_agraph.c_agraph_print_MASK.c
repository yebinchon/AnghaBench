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
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int sx; int sy; } ;
struct TYPE_16__ {int h; int w; int x; int y; char* title; TYPE_6__* can; int /*<<< orphan*/  is_tiny; scalar_t__ is_dis; } ;
struct TYPE_15__ {scalar_t__ scr_gadgets; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 int /*<<< orphan*/  Color_RESET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int,int,int,int,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char const*) ; 
 char* FUNC20 (TYPE_1__*,char*) ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC23(RAGraph *g, int is_interactive, RCore *core, RAnalFunction *fcn) {
	int h, w = FUNC14 (&h);
	int ret = FUNC4 (g, is_interactive, core, fcn);
	if (!ret) {
		return false;
	}

	if (is_interactive) {
		FUNC12 ();
	} else {
		/* TODO: limit to screen size when the output is not redirected to file */
		FUNC22 (g);
	}

	h = is_interactive? h: g->h + 1;
	w = is_interactive? w: g->w + 2;
	if (!FUNC11 (g->can, w, h)) {
		return false;
	}
	// r_cons_canvas_clear (g->can);
	if (!is_interactive) {
		g->can->sx = -g->x;
		g->can->sy = -g->y - 1;
	}
	if (g->is_dis) {
		(void) FUNC0 (-g->can->sx + 1, -g->can->sy + 2);
		int scr_utf8 = FUNC7 (core->config, "scr.utf8");
		int asm_bytes = FUNC7 (core->config, "asm.bytes");
		int asm_cmt_right = FUNC7 (core->config, "asm.cmt.right");
		FUNC8 (core->config, "scr.utf8", 0);
		FUNC8 (core->config, "asm.bytes", 0);
		FUNC8 (core->config, "asm.cmt.right", 0);
		char *str = FUNC20 (core, "pd $r");
		if (str) {
			FUNC1 (str);
			FUNC5 (str);
		}
		FUNC8 (core->config, "scr.utf8", scr_utf8);
		FUNC8 (core->config, "asm.bytes", asm_bytes);
		FUNC8 (core->config, "asm.cmt.right", asm_cmt_right);
	}
	if (g->title && *g->title) {
		g->can->sy ++;
	}
	FUNC2 (g);
	FUNC3 (g);
	if (g->title && *g->title) {
		g->can->sy --;
	}
	/* print the graph title */
	(void) FUNC0 (-g->can->sx, -g->can->sy);
	if (!g->is_tiny) {
                FUNC1 (g->title);
	}
	if (is_interactive && g->title) {
		int title_len = FUNC21 (g->title);
		FUNC9 (g->can, -g->can->sx + title_len, -g->can->sy,
			w - title_len, 1, ' ');
	}

	FUNC10 (g->can);

	if (is_interactive) {
		FUNC16 ();
		const char *cmdv = FUNC6 (core->config, "cmd.gprompt");
		bool mustFlush = false;
		FUNC18 ();
		if (cmdv && *cmdv) {
			FUNC15 (0, 2);
			FUNC17 (Color_RESET);
			FUNC19 (core, cmdv);
			mustFlush = true;
		}
		if (core && core->scr_gadgets) {
			FUNC19 (core, "pg");
		}
		if (mustFlush) {
			FUNC13 ();
		}
	}
	return true;
}