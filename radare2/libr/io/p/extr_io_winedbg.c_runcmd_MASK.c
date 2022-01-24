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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  gs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static char *FUNC7 (const char *cmd) {
	char buf[4096] = {0};
	if (cmd) {
		FUNC3 (gs, "%s\n", cmd);
	}
	int timeout = 1000000;
	char *str = NULL;
	FUNC2 (gs, 1, timeout, 0);
	while (true) {
		FUNC1 (buf, 0, sizeof (buf));
		FUNC4 (gs, (ut8*)buf, sizeof (buf) - 1); // NULL-terminate the string always
		char *promptFound = FUNC6 (buf, "Wine-dbg>");
		if (promptFound) {
			*promptFound = 0;
			return FUNC5 (str, buf);
		}
		str = FUNC5 (str, buf);
	}
	FUNC0 (str);
	return NULL;
}