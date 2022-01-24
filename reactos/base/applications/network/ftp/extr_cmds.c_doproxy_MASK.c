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
struct cmd {int /*<<< orphan*/  (* c_handler ) (int,char const**) ;scalar_t__ c_conn; int /*<<< orphan*/  c_proxy; } ;
typedef  int /*<<< orphan*/  jmp_buf ;

/* Variables and functions */
 int code ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int proxflag ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char const**) ; 

void FUNC9(int argc, const char *argv[])
{
	register struct cmd *c;
	struct cmd *FUNC10();
//	extern struct cmd cmdtab[];
	extern jmp_buf abortprox;

	if (argc < 2) {
		(void) FUNC6(line, " ");
		FUNC3("(command) ");
		(void) FUNC0(stdout);
		(void) FUNC1(&line[FUNC7(line)]);
		FUNC2();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC3("usage:%s command\n", argv[0]);
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	c = FUNC10(argv[1]);
	if (c == (struct cmd *) -1) {
		FUNC3("?Ambiguous command\n");
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	if (c == 0) {
		FUNC3("?Invalid command\n");
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	if (!c->c_proxy) {
		FUNC3("?Invalid proxy command\n");
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	if (FUNC5(abortprox)) {
		code = -1;
		return;
	}
//	oldintr = signal(SIGINT, proxabort);
	FUNC4(1);
	if (c->c_conn && !connected) {
		FUNC3("Not connected\n");
		(void) FUNC0(stdout);
		FUNC4(0);
//		(void) signal(SIGINT, oldintr);
		code = -1;
		return;
	}
	(*c->c_handler)(argc-1, argv+1);
	if (connected) {
		proxflag = 1;
	}
	else {
		proxflag = 0;
	}
	FUNC4(0);
//	(void) signal(SIGINT, oldintr);
}