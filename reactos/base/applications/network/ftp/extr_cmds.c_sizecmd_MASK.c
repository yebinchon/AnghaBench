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
 int code ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(int argc, const char *argv[])
{

	if (argc < 2) {
		(void) FUNC5(line, " ");
		FUNC4("(filename) ");
		(void) FUNC1(stdout);
		(void) FUNC2(&line[FUNC6(line)]);
		FUNC3();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC4("usage:%s filename\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	(void) FUNC0("SIZE %s", argv[1]);
}