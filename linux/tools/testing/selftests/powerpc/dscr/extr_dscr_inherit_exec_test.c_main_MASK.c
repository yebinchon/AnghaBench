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

/* Variables and functions */
 unsigned long FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  dscr_inherit_exec ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 char* prog ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(int argc, char *argv[])
{
	if (argc == 3 && !FUNC4(argv[1], "exec")) {
		unsigned long parent_dscr;

		parent_dscr = FUNC0(argv[2]);
		FUNC1(parent_dscr);
	} else if (argc != 1) {
		FUNC3(stderr, "Usage: %s\n", argv[0]);
		FUNC2(1);
	}

	prog = argv[0];
	return FUNC5(dscr_inherit_exec, "dscr_inherit_exec_test");
}