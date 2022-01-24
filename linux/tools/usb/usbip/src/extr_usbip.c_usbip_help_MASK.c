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
struct command {char* name; char* help; int /*<<< orphan*/  (* usage ) () ;} ;

/* Variables and functions */
 struct command* cmds ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(int argc, char *argv[])
{
	const struct command *cmd;
	int i;
	int ret = 0;

	if (argc > 1 && argv++) {
		for (i = 0; cmds[i].name != NULL; i++)
			if (!FUNC1(cmds[i].name, argv[0]) && cmds[i].usage) {
				cmds[i].usage();
				goto done;
			}
		ret = -1;
	}

	FUNC3();
	FUNC0("\n");
	for (cmd = cmds; cmd->name != NULL; cmd++)
		if (cmd->help != NULL)
			FUNC0("  %-10s %s\n", cmd->name, cmd->help);
	FUNC0("\n");
done:
	return ret;
}