#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct utsname {int /*<<< orphan*/  machine; int /*<<< orphan*/  release; int /*<<< orphan*/  nodename; int /*<<< orphan*/  sysname; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {int /*<<< orphan*/ * glob; int /*<<< orphan*/  minstamp; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ RCoreUndoCondition ;
typedef  int /*<<< orphan*/  RCoreUndo ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  help_msg_u ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct utsname*) ; 

__attribute__((used)) static int FUNC14(void *data, const char *input) {
	RCore *core = (RCore *)data;
	switch (input[0]) {
	case '?': // "u?"
		FUNC5 (data, help_msg_u);
		return 1;
	case 'c': // "uc"
		switch (input[1]) {
		case ' ': {
			char *cmd = FUNC12 (input + 2);
			char *rcmd = FUNC11 (cmd, ',');
			if (rcmd) {
				*rcmd++ = 0;
				RCoreUndo *undo = FUNC7 (core->offset, cmd, rcmd);
				FUNC10 (core, undo);
			} else {
				FUNC2 ("Usage: uc [cmd] [revert-cmd]");
			}
			FUNC3 (cmd);
			}
			break;
		case '?':
			FUNC2 ("Usage: uc [cmd],[revert-cmd]\n");
			FUNC2 (" uc. - list all reverts in current\n");
			FUNC2 (" uc* - list all core undos\n");
			FUNC2 (" uc  - list all core undos\n");
			FUNC2 (" uc- - undo last action\n");
			break;
		case '.': {
			RCoreUndoCondition cond = {
				.addr = core->offset,
				.minstamp = 0,
				.glob = NULL
			};
			FUNC9 (core, 1, &cond);
			} break;
		case '*':
			FUNC9 (core, 1, NULL);
			break;
		case '-': // "uc-"
			FUNC8 (core);
			break;
		default:
			FUNC9 (core, 0, NULL);
			break;
		}
		return 1;
	case 's': // "us"
		FUNC6 (data, "s-%s", input + 1);
		return 1;
	case 'w': // "uw"
		FUNC6 (data, "wc%s", input + 1);
		return 1;
	case 'n': // "un"
		if (input[1] == 'a') { // "uname"
			(void)FUNC0 (core, input);
		} else if (input[1] == 'i' && input[2] == 'q') {
			(void)FUNC1 (core, input);
		}
		return 1;
	}
#if __UNIX__
	struct utsname un;
	uname (&un);
	r_cons_printf ("%s %s %s %s\n", un.sysname,
		un.nodename, un.release, un.machine);
#elif __WINDOWS__
	r_cons_printf ("windows\n");
#else
	FUNC4 ("unknown\n");
#endif
	return 0;
}