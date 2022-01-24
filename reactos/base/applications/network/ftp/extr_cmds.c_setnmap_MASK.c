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
 scalar_t__ MAXPATHLEN ; 
 char* altarg ; 
 int code ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int mapflag ; 
 int /*<<< orphan*/  mapin ; 
 int /*<<< orphan*/  mapout ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ proxy ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC8(int argc, const char *argv[])
{
	char *cp;

	if (argc == 1) {
		mapflag = 0;
		FUNC4("Nmap off.\n");
		(void) FUNC0(stdout);
		code = mapflag;
		return;
	}
	if (argc < 3) {
		(void) FUNC5(line, " ");
		FUNC4("(mapout) ");
		(void) FUNC0(stdout);
		(void) FUNC1(&line[FUNC6(line)]);
		FUNC3();
		argc = margc;
		argv = margv;
	}
	if (argc < 3) {
		FUNC4("Usage: %s [mapin mapout]\n",argv[0]);
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	mapflag = 1;
	code = 1;
	cp = FUNC2(altarg, ' ');
	if (proxy) {
		while(*++cp == ' ');
		altarg = cp;
		cp = FUNC2(altarg, ' ');
	}
	*cp = '\0';
	(void) FUNC7(mapin, altarg, MAXPATHLEN - 1);
	while (*++cp == ' ');
	(void) FUNC7(mapout, cp, MAXPATHLEN - 1);
}