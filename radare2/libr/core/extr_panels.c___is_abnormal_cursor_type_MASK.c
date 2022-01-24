#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RPanel ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_CMD_FUNCTION ; 
 int /*<<< orphan*/  PANEL_CMD_SYMBOLS ; 
 int /*<<< orphan*/  PANEL_TITLE_BREAKPOINTS ; 
 int /*<<< orphan*/  PANEL_TITLE_COMMENTS ; 
 int /*<<< orphan*/  PANEL_TITLE_DISASMSUMMARY ; 
 int /*<<< orphan*/  PANEL_TITLE_SECTIONS ; 
 int /*<<< orphan*/  PANEL_TITLE_SEGMENTS ; 
 int /*<<< orphan*/  PANEL_TITLE_STRINGS_BIN ; 
 int /*<<< orphan*/  PANEL_TITLE_STRINGS_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC2(RCore *core, RPanel *panel) {
	if (FUNC0 (panel, PANEL_CMD_SYMBOLS) || FUNC0 (panel, PANEL_CMD_FUNCTION)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_DISASMSUMMARY)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_STRINGS_DATA)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_STRINGS_BIN)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_BREAKPOINTS)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_SECTIONS)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_SEGMENTS)) {
		return true;
	}
	if (FUNC1 (core, panel, PANEL_TITLE_COMMENTS)) {
		return true;
	}
	return false;
}