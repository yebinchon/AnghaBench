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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC2(void *data, const char *input) {
	RCore *core = (RCore *)data;

	if (*input == '!') {
		return FUNC0 (core, input);
	}
	if (*input == '?') {
		const char *helpmsg3[] = {
		"Usage #!interpreter [<args>] [<file] [<<eof]","","",
		" #", "", "comment - do nothing",
		" #!","","list all available interpreters",
		" #!python","","run python commandline",
		" #!python"," foo.py","run foo.py python script (same as '. foo.py')",
		//" #!python <<EOF        get python code until 'EOF' mark\n"
		" #!python"," arg0 a1 <<q","set arg0 and arg1 and read until 'q'",
		NULL};
		FUNC1 (core, helpmsg3);
		return false;
	}
	/* this is a comment - captain obvious
	   should not be reached, see r_core_cmd_subst() */
	return 0;
}