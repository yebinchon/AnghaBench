#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_13__ {double color; } ;
struct TYPE_12__ {int blocksize; int /*<<< orphan*/  config; int /*<<< orphan*/  offset; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RConsCanvas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 double FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 char* FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC16 (char*,int,int) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(RCore *core, const char *input) {
	int h, w = FUNC9 (&h);
	int colwidth = FUNC2 (core->config, "hex.cols") * 2.5;
	if (colwidth < 1) {
		colwidth = 16;
	}
	int i, columns = w / colwidth;
	int rows = h - 2;
	int obsz = core->blocksize;
	int user_rows = FUNC15 (core->num, input);
	bool asm_minicols = FUNC2 (core->config, "asm.minicols");
	char *o_ao = FUNC17 (FUNC1 (core->config, "asm.offset"));
	char *o_ab = FUNC17 (FUNC1 (core->config, "asm.bytes"));
	if (asm_minicols) {
		FUNC3 (core->config, "asm.offset", "false");
// r_config_set (core->config, "asm.bytes", "false");
	}
	FUNC3 (core->config, "asm.bytes", "false");
	if (user_rows > 0) {
		rows = user_rows + 1;
	}
	FUNC11 ();
	RConsCanvas *c = FUNC6 (w, rows);
	ut64 osek = core->offset;
	c->color = FUNC2 (core->config, "scr.color");
	FUNC12 (core, rows * 32);
	for (i = 0; i < columns; i++) {
		(void) FUNC5 (c, i * (w / columns), 0);
		char *cmd = FUNC16 ("pid %d @i:%d", rows, rows * i);
		char *dis = FUNC13 (core, cmd);
		FUNC8 (c, dis);
		FUNC0 (cmd);
		FUNC0 (dis);
	}
	FUNC12 (core, obsz);
	FUNC14 (core, osek, 1);

	FUNC10 ();
	FUNC7 (c);
	FUNC4 (c);
	if (asm_minicols) {
		FUNC3 (core->config, "asm.offset", o_ao);
		FUNC3 (core->config, "asm.bytes", o_ab);
	}
	FUNC3 (core->config, "asm.bytes", o_ab);
	FUNC0 (o_ao);
	FUNC0 (o_ab);
}