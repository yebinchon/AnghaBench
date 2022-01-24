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
typedef  int /*<<< orphan*/  acct ;

/* Variables and functions */
 int COMPLETE ; 
 int CONTINUE ; 
 int code ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* line ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

void FUNC9(int argc, const char *argv[])
{
	char acct[80], *FUNC10();
	int n, aflag = 0;

	if (argc < 2) {
		(void) FUNC7(line, " ");
		FUNC6("(username) ");
		(void) FUNC1(stdout);
		(void) FUNC4(&line[FUNC8(line)]);
		FUNC5();
		argc = margc;
		argv = margv;
	}
	if (argc > 4) {
		FUNC6("usage: %s username [password] [account]\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	n = FUNC0("USER %s", argv[1]);
	if (n == CONTINUE) {
		if (argc < 3 )
			argv[2] = FUNC10("Password: "), argc++;
		n = FUNC0("PASS %s", argv[2]);
	}
	if (n == CONTINUE) {
		if (argc < 4) {
			FUNC6("Account: "); (void) FUNC1(stdout);
			(void) FUNC1(stdout);
			(void) FUNC2(acct, sizeof(acct) - 1, stdin);
			acct[FUNC8(acct) - 1] = '\0';
			argv[3] = acct; argc++;
		}
		n = FUNC0("ACCT %s", argv[3]);
		aflag++;
	}
	if (n != COMPLETE) {
		FUNC3(stdout, "Login failed.\n");
		(void) FUNC1(stdout);
		return;
	}
	if (!aflag && argc == 4) {
		(void) FUNC0("ACCT %s", argv[3]);
	}
}