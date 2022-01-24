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
struct TYPE_3__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int FUNC8(void *data, const char *input) { // "sort"
	RCore *core = (RCore *)data;
	const char *arg = FUNC7 (input, ' ');
	if (arg) {
		arg = FUNC5 (arg + 1);
	}
	switch (*input) {
	case '?': // "sort?"
		FUNC0 ("Usage: sort # sort the contents of the file\n");
		break;
	default: // "ls"
		if (!arg) {
			arg = "";
		}
		if (FUNC4 (core->fs, arg)) {
			FUNC3 (core, "md %s", arg);
		} else {
			char *res = FUNC6 (arg);
			if (res) {
				FUNC2 (res);
				FUNC1 (res);
			}
		}
		break;
	}
	return 0;
}