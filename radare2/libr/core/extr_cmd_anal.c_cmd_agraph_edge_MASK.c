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
struct TYPE_4__ {int /*<<< orphan*/  graph; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RANode ;

/* Variables and functions */
 int /*<<< orphan*/  help_msg_age ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char** FUNC5 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 

__attribute__((used)) static void FUNC7(RCore *core, const char *input) {
	switch (*input) {
	case ' ': // "age"
	case '-': { // "age-"
		RANode *u, *v;
		char **args;
		int n_args;

		args = FUNC5 (input + 1, &n_args);
		if (n_args != 2) {
			FUNC3 ("Wrong arguments\n");
			FUNC6 (args);
			break;
		}

		u = FUNC2 (core->graph, args[0]);
		v = FUNC2 (core->graph, args[1]);
		if (!u || !v) {
			if (!u) {
				FUNC3 ("Node %s not found!\n", args[0]);
			} else {
				FUNC3 ("Node %s not found!\n", args[1]);
			}
			FUNC6 (args);
			break;
		}
		if (*input == ' ') {
			FUNC0 (core->graph, u, v);
		} else {
			FUNC1 (core->graph, u, v);
		}
		FUNC6 (args);
		break;
	}
	case '?':
	default:
		FUNC4 (core, help_msg_age);
		break;
	}
}