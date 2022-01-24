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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*,int) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10 (void *data, const char *_input) { // "head"
	RCore *core = (RCore *)data;
	int lines = 5;
	char *input = FUNC9 (_input);
	char *arg = FUNC8 (input, ' ');
	char *tmp, *count;
	if (arg) {
		arg = (char *)FUNC6 (arg + 1); 	// contains "count filename"
		count = FUNC8 (arg, ' ');
		if (count) {
			*count = 0;	// split the count and file name
			tmp = (char *)FUNC6 (count + 1);
			lines = FUNC0 (arg);
			arg = tmp;
		}
	}
	switch (*input) {
	case '?': // "head?"
		FUNC1 ("Usage: head [file] # to list first n lines in file\n");
		break;
	default: // "head"
		if (!arg) {
			arg = "";
		}
		if (FUNC5 (core->fs, arg)) {
			FUNC4 (core, "md %s", arg);
		} else {
			char *res = FUNC7 (arg, lines);
			if (res) {
				FUNC3 (res);
				FUNC2 (res);
			}
		}
		break;
	}
	FUNC2 (input);
	return 0;
}