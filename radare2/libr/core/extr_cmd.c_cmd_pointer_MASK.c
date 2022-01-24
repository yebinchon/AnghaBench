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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_star ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(void *data, const char *input) {
	RCore *core = (RCore*) data;
	int ret = true;
	char *str, *eq;
	input = FUNC3 (input);
	while (*input == ' ') {
		input++;
	}
	if (!*input || *input == '?') {
		FUNC1 (core, help_msg_star);
		return ret;
	}
	str = FUNC5 (input);
	eq = FUNC4 (str, '=');
	if (eq) {
		*eq++ = 0;
		if (!FUNC6 (eq, "0x", 2)) {
			ret = FUNC2 (core, "wv %s@%s", eq, str);
		} else {
			ret = FUNC2 (core, "wx %s@%s", eq, str);
		}
	} else {
		ret = FUNC2 (core, "?v [%s]", input);
	}
	FUNC0 (str);
	return ret;
}