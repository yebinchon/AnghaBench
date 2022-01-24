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
typedef  int ut32 ;
typedef  int /*<<< orphan*/  TSNode ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (char*,int,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(RCore *core, const char *cstr, TSNode node, bool log) {
	TSNode command = FUNC6 (node, 0);
	ut32 command_start = FUNC7 (command);
	ut32 command_end = FUNC5 (command);
	char *cmd_string = FUNC4 ("%.*s", command_end - command_start, cstr + command_start);
	char *str = FUNC3 (core, cmd_string);
	FUNC0 ("interpret_command cmd_string = '%s', result to interpret = '%s'\n", cmd_string, str);
	FUNC2 (cmd_string);
	bool res = FUNC1 (core, str, log);
	FUNC2 (str);
	return res;
}