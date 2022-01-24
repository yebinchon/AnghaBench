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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(void *_core, const char *cmd) {
	// RCore *core = (RCore*)_core;
	if (*cmd == '{') {
		// parse json here, and retrieve arguments
		return 1;
	}
	if (!*cmd) {
		return 1;
	}
	if (*cmd == '?') {
		FUNC0 ("Usage: :<command> <arguments\n");
		FUNC0 ("Usage: :{json-goes-here}\n");
		FUNC0 ("See: T command to save/replay/. long commands\n");
		FUNC0 ("See: e http.colon=true\n");
		return 1;
	}
	const char *space = FUNC4 (cmd, ' ');
	if (space) {
		int len = space - cmd;
		char *action = FUNC3 (cmd, len);
		FUNC2 ("-> %s\n", action);
		FUNC1 (action);
		return 1;
	}
	FUNC0 ("Invalid command\n");
	// Use hashtable
	return 0;
}