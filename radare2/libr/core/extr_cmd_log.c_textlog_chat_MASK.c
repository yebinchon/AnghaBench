#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  prompt ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  config; TYPE_1__* log; } ;
struct TYPE_7__ {int last; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(RCore *core) {
	char prompt[64];
	char buf[1024];
	int lastmsg = 0;
	const char *me = FUNC1 (core->config, "cfg.user");
	char msg[2048];

	FUNC0 ("Type '/help' for commands:\n");
	FUNC8 (prompt, sizeof (prompt) - 1, "[%s]> ", me);
	FUNC7 (prompt);
	for (;;) {
		FUNC6 (core, lastmsg, 0, 0);
		lastmsg = core->log->last;
		if (FUNC3 (buf, sizeof (buf) - 1, 0, NULL) < 0) {
			return 1;
		}
		if (!*buf) {
			continue;
		}
		if (!FUNC9 (buf, "/help")) {
			FUNC0 ("/quit           quit the chat (same as ^D)\n");
			FUNC0 ("/name <nick>    set cfg.user name\n");
			FUNC0 ("/log            show full log\n");
			FUNC0 ("/clear          clear text log messages\n");
		} else if (!FUNC10 (buf, "/name ", 6)) {
			FUNC8 (msg, sizeof (msg) - 1, "* '%s' is now known as '%s'", me, buf + 6);
			FUNC5 (core, msg);
			FUNC2 (core->config, "cfg.user", buf + 6);
			me = FUNC1 (core->config, "cfg.user");
			FUNC8 (prompt, sizeof (prompt) - 1, "[%s]> ", me);
			FUNC7 (prompt);
			return 0;
		} else if (!FUNC9 (buf, "/log")) {
			FUNC6 (core, 0, 0, 0);
			return 0;
		} else if (!FUNC9 (buf, "/clear")) {
			// r_core_log_del (core, 0);
			FUNC4 (core, "T-");
			return 0;
		} else if (!FUNC9 (buf, "/quit")) {
			return 0;
		} else if (*buf == '/') {
			FUNC0 ("Unknown command: %s\n", buf);
		} else {
			FUNC8 (msg, sizeof (msg), "[%s] %s", me, buf);
			FUNC5 (core, msg);
		}
	}
	return 1;
}