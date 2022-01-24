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
struct TYPE_4__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (RCore *core, int count, const char *line) {
	if (*line == ':') {
		char *cmd = FUNC0 (core->log, line);
		if (cmd) {
			FUNC2 ("%s\n", cmd);
			FUNC3 (core, cmd, 0);
			FUNC1 (cmd);
		}
	}
	return 0;
}