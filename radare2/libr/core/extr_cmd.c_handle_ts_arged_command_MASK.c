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
typedef  int ut32 ;
struct TYPE_3__ {int /*<<< orphan*/  rcmd; } ;
typedef  int /*<<< orphan*/  TSNode ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,int,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(RCore *core, const char *cstr, TSNode node) {
	TSNode command = FUNC6 (node, 0);
	ut32 cmd_start_byte = FUNC7 (command);
	ut32 cmd_end_byte = FUNC5 (command);
	FUNC0 ("command: '%.*s'\n", cmd_end_byte - cmd_start_byte, cstr + cmd_start_byte);

	ut32 child_count = FUNC4 (node);
	ut32 last_end_byte = cmd_end_byte;
	int i;
	for (i = 1; i < child_count; ++i) {
		TSNode arg = FUNC6 (node, i);
		ut32 start_byte = FUNC7 (arg);
		ut32 end_byte = FUNC5 (arg);
		if (last_end_byte < end_byte) {
			last_end_byte = end_byte;
		}
		FUNC0 ("arg: '%.*s'\n", end_byte - start_byte, cstr + start_byte);
	}
	char *cmd_string = FUNC3 ("%.*s", last_end_byte - cmd_start_byte, cstr + cmd_start_byte);
	bool res = FUNC2 (core->rcmd, cmd_string) != -1;
	FUNC1 (cmd_string);
	return res;
}