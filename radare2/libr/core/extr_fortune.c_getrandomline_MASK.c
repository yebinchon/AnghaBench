#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fortunes ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*,int*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC6(RCore *core) {
	int i, lines = 0;
	const char *types = (char *)FUNC3 (core->config, "cfg.fortunes.type");
	char *line = NULL, *templine;
	for (i = 0; i < FUNC0 (fortunes); i++) {
		if (FUNC5 (types, fortunes[i])) {
			char *file = FUNC2(core, fortunes[i]);
			templine = FUNC4 (file, &lines);
			if (templine && *templine) {
				FUNC1 (line);
				line = templine;
			}
			FUNC1 (file);
		}
	}
	return line;
}