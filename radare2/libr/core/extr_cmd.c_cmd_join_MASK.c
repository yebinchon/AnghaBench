#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char const*) ; 
 void* FUNC6 (char const*,char) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(void *data, const char *input) { // "join"
	RCore *core = (RCore *)data;
	char *tmp = FUNC7 (input);
	const char *arg1 = FUNC6 (tmp, ' ');
	if (!arg1) {
		goto beach;
	}
	arg1 = FUNC4 (arg1);
	char *end = FUNC6 (arg1, ' ');
	if (!end) {
		goto beach;
	}
	*end = '\0';
	const char *arg2 = end+1;
	if (!arg2) {
		goto beach;
	}
	arg2 = FUNC4 (arg2);
	switch (*input) {
	case '?': // "join?"
		goto beach;
	default: // "join"
		if (!arg1) {
			arg1 = "";
		}
		if (!arg2) {
			arg2 = "";
		}
		if (!FUNC3 (core->fs, arg1) && !FUNC3 (core->fs, arg2)) {
			char *res = FUNC5 (arg1, arg2);
			if (res) {
				FUNC2 (res);
				FUNC1 (res);
			}
		}
		break;
	}
	FUNC1 (tmp);
	return 0;
beach:
	FUNC0 ("Usage: join [file1] [file2] # join the contents of the two files\n");
	FUNC1 (tmp);
	return 0;
}