#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 

__attribute__((used)) static void FUNC4(RCore *core, const char *glob) {
	char cmd[128];
	ut64 curseek = core->offset;
	while (*glob == ' ') glob++;
	if (!*glob) {
		glob = "str.";
	}
	if (*glob == '?') {
		FUNC0 ("Usage: axF [flag-str-filter]\n");
		return;
	}
	FUNC0 ("Finding references of flags matching '%s'...\n", glob);
	FUNC3 (cmd, sizeof (cmd) - 1, ".(findstref) @@= `f~%s[0]`", glob);
	FUNC1 (core, "(findstref,f here=$$,s entry0,/r here,f-here)");
	FUNC1 (core, cmd);
	FUNC1 (core, "(-findstref)");
	FUNC2 (core, curseek, 1);
}