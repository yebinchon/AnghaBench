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
 int BUFSIZ ; 
 scalar_t__ PRELIM ; 
 int code ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* line ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char*) ; 

void FUNC9(int argc, const char *argv[])
{
	int i;
	char buf[BUFSIZ];

	if (argc < 2) {
		(void) FUNC6(line, " ");
		FUNC5("(command line to send) ");
		(void) FUNC1(stdout);
		(void) FUNC3(&line[FUNC8(line)]);
		FUNC4();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC5("usage: %s line-to-send\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	(void) FUNC7(buf, argv[1]);
	for (i = 2; i < argc; i++) {
		(void) FUNC6(buf, " ");
		(void) FUNC6(buf, argv[i]);
	}
	if (FUNC0(buf) == PRELIM) {
		while (FUNC2(0) == PRELIM);
	}
}