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

/* Type definitions */
struct TYPE_20__ {TYPE_1__* panels; } ;
struct TYPE_19__ {int /*<<< orphan*/  curnode; int /*<<< orphan*/  fun; } ;
typedef  TYPE_1__ RPanels ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  DOWN ; 
 int /*<<< orphan*/  HORIZONTAL ; 
 int /*<<< orphan*/  LEFT ; 
 int /*<<< orphan*/  PANEL_FUN_SAKURA ; 
 int /*<<< orphan*/  PANEL_FUN_SNOW ; 
 int /*<<< orphan*/  RIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UP ; 
 int /*<<< orphan*/  VERTICAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int) ; 
 char* FUNC13 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

bool FUNC18(RCore *core, const int key) {
	RPanels *panels = core->panels;
	RPanel *cur = FUNC3 (panels);
	FUNC17 (false);
	switch (key) {
	case 'Q':
	case 'q':
	case 'w':
		FUNC14 (core);
		break;
	case 0x0d:
		FUNC15 (core);
		break;
	case 9: // tab
		FUNC4 (core, false);
		break;
	case 'Z': // shift-tab
		FUNC4 (core, true);
		break;
	case 'e':
	{
		char *cmd = FUNC13 (core, "New command: ");
		if (FUNC0 (cmd)) {
			FUNC6 (core, cmd, cmd);
		}
		FUNC16 (cmd);
	}
		break;
	case 'h':
		if (FUNC5 (core, LEFT)) {
			FUNC12 (core, false, false);
		}
		if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
			FUNC7 (panels);
		}
		break;
	case 'j':
		if (FUNC5 (core, DOWN)) {
			FUNC12 (core, false, false);
		}
		if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
			FUNC7 (panels);
		}
		break;
	case 'k':
		if (FUNC5 (core, UP)) {
			FUNC12 (core, false, false);
		}
		if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
			FUNC7 (panels);
		}
		break;
	case 'l':
		if (FUNC5 (core, RIGHT)) {
			FUNC12 (core, false, false);
		}
		if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
			FUNC7 (panels);
		}
		break;
	case 'H':
		FUNC17 (false);
		FUNC9 (panels);
		break;
	case 'L':
		FUNC17 (false);
		FUNC10 (panels);
		break;
	case 'J':
		FUNC17 (false);
		FUNC8 (panels);
		break;
	case 'K':
		FUNC17 (false);
		FUNC11 (panels);
		break;
	case 'n':
		FUNC1 (core, cur, VERTICAL, NULL);
		break;
	case 'N':
		FUNC1 (core, cur, HORIZONTAL, NULL);
		break;
	case 'X':
		FUNC2 (core, cur, panels->curnode);
		FUNC12 (core, false, false);
		break;
	case '"':
	case ':':
	case ';':
	case '/':
	case 'd':
	case 'b':
	case 'p':
	case 'P':
	case 't':
	case 'T':
	case '?':
	case '|':
	case '-':
		return false;
	}
	return true;
}