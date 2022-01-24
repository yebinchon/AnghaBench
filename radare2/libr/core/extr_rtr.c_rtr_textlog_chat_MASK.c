#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  prompt ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  TextLog ;
struct TYPE_6__ {int /*<<< orphan*/  prompt; } ;
struct TYPE_5__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_3__* FUNC9 () ; 
 char* FUNC10 (char*,char const*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

__attribute__((used)) static void FUNC17 (RCore *core, TextLog T) {
	char prompt[64];
	char buf[1024];
	int lastmsg = 0;
	const char *me = FUNC3 (core->config, "cfg.user");
	char *ret, msg[1024];

	FUNC1 ("Type '/help' for commands and ^D to quit:\n");
	char *oldprompt = FUNC15 (FUNC9 ()->prompt);
	FUNC12 (prompt, sizeof (prompt) - 1, "[%s]> ", me);
	FUNC8 (prompt);
	ret = FUNC11 (T, msg);
	for (;;) {
		if (lastmsg >= 0) {
			FUNC12 (msg, sizeof (msg) - 1, "T %d", lastmsg);
		} else {
			FUNC14 (msg, "T");
		}
		ret = FUNC11 (T, msg);
		FUNC6 (ret);
		FUNC2 (ret);
		ret = FUNC11 (T, "Tl");
		lastmsg = FUNC0 (ret)-1;
		FUNC2 (ret);
		if (FUNC5 (buf, sizeof (buf) - 1, 0, NULL) < 0) {
			goto beach;
		}
		if (!*buf) {
			continue;
		}
		if (!FUNC13 (buf, "/help")) {
			FUNC1 ("/quit           quit the chat (same as ^D)\n");
			FUNC1 ("/nick <nick>    set cfg.user nick name\n");
			FUNC1 ("/log            show full log\n");
			FUNC1 ("/clear          clear text log messages\n");
		} else if (!FUNC16 (buf, "/nick ", 6)) {
			FUNC12 (msg, sizeof (msg) - 1, "* '%s' is now known as '%s'", me, buf+6);
			FUNC6 (msg);
			FUNC7 (core, msg);
			FUNC4 (core->config, "cfg.user", buf+6);
			me = FUNC3 (core->config, "cfg.user");
			FUNC12 (prompt, sizeof (prompt) - 1, "[%s]> ", me);
			FUNC8 (prompt);
		} else if (!FUNC13 (buf, "/log")) {
			char *ret = FUNC11 (T, "T");
			if (ret) {
				FUNC6 (ret);
				FUNC2 (ret);
			}
		} else if (!FUNC13 (buf, "/clear")) {
			//r_core_log_del (core, 0);
			FUNC2 (FUNC11 (T, "T-"));
		} else if (!FUNC13 (buf, "/quit")) {
			goto beach;
		} else if (*buf=='/') {
			FUNC1 ("Unknown command: %s\n", buf);
		} else {
			char *cmd = FUNC10 ("T [%s] %s", me, buf);
			FUNC2 (FUNC11 (T, cmd));
			FUNC2 (cmd);
		}
	}
beach:
	FUNC8 (oldprompt);
	FUNC2 (oldprompt);
}