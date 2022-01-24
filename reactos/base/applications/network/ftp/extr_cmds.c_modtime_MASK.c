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
 scalar_t__ COMPLETE ; 
 int code ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* reply_string ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int verbose ; 

void FUNC8(int argc, const char *argv[])
{
	int overbose;

	if (argc < 2) {
		(void) FUNC6(line, " ");
		FUNC4("(filename) ");
		(void) FUNC1(stdout);
		(void) FUNC2(&line[FUNC7(line)]);
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
	overbose = verbose;
	if (debug == 0)
		verbose = -1;
	if (FUNC0("MDTM %s", argv[1]) == COMPLETE) {
		int yy, mo, day, hour, min, sec;
		FUNC5(reply_string, "%*s %04d%02d%02d%02d%02d%02d", &yy, &mo,
			&day, &hour, &min, &sec);
		/* might want to print this in local time */
		FUNC4("%s\t%02d/%02d/%04d %02d:%02d:%02d GMT\n", argv[1],
			mo, day, yy, hour, min, sec);
	} else
		FUNC4("%s\n", reply_string);
	verbose = overbose;
	(void) FUNC1(stdout);
}