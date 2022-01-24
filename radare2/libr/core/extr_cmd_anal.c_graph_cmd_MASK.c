#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*,char*,char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static char* FUNC8(RCore *core, char *r2_cmd, const char *save_path) {
	const char *dot = "dot";
	char *cmd = NULL;
	const char *ext = FUNC3 (core->config, "graph.gv.format");
	char *dotPath = FUNC4 (dot);
	if (!FUNC7 (dotPath, dot)) {
		FUNC1 (dotPath);
		dot = "xdot";
		dotPath = FUNC4 (dot);
		if (!FUNC7 (dotPath, dot)) {
			FUNC1 (dotPath);
			return FUNC5 ("agf");
		}
	}
	if (save_path && *save_path) {
		cmd = FUNC6 ("%s > a.dot;!%s -T%s -o%s a.dot;",
			r2_cmd, dot, ext, save_path);
	} else {
		char *viewer = FUNC2();
		if (viewer) {
			cmd = FUNC6 ("%s > a.dot;!%s -T%s -oa.%s a.dot;!%s a.%s",
				r2_cmd, dot, ext, ext, viewer, ext);
			FUNC1 (viewer);
		} else {
			FUNC0 ("Cannot find a valid picture viewer\n");
		}
	}
	FUNC1 (dotPath);
	return cmd;
}