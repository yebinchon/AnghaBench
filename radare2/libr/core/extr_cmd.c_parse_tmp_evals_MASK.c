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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC4 (char*,char*,char const*) ; 
 char* FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static char *FUNC10(RCore *core, const char *str) {
	char *s = FUNC9 (str);
	int i, argc = FUNC6 (s, ',');
	char *res = FUNC9 ("");
	if (!s || !res) {
		FUNC1 (s);
		FUNC1 (res);
		return NULL;
	}
	for (i = 0; i < argc; i++) {
		char *eq, *kv = (char *)FUNC7 (s, i);
		if (!kv) {
			break;
		}
		eq = FUNC8 (kv, '=');
		if (eq) {
			*eq = 0;
			const char *ov = FUNC2 (core->config, kv);
			if (!ov) {
				continue;
			}
			char *cmd = FUNC4 ("e %s=%s;", kv, ov);
			if (!cmd) {
				FUNC1 (s);
				FUNC1 (res);
				return NULL;
			}
			res = FUNC5 (res, cmd);
			FUNC1 (cmd);
			FUNC3 (core->config, kv, eq + 1);
			*eq = '=';
		} else {
			FUNC0 ("Missing '=' in e: expression (%s)\n", kv);
		}
	}
	FUNC1 (s);
	return res;
}