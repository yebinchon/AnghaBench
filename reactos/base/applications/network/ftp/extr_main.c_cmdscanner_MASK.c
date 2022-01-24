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
struct cmd {int /*<<< orphan*/  (* c_handler ) (scalar_t__,int /*<<< orphan*/ *) ;scalar_t__ c_bell; scalar_t__ c_conn; } ;

/* Variables and functions */
 scalar_t__ bell ; 
 int /*<<< orphan*/  connected ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 struct cmd* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__* line ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ margc ; 
 int /*<<< orphan*/ * margv ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC11(int top)
{
	register struct cmd *c;

	if (!top)
		(void) FUNC8('\n');
	for (;;) {
		(void) FUNC2(stdout);
		if (fromatty) {
			FUNC7("ftp> ");
			(void) FUNC2(stdout);
		}
		if (FUNC4(line) == 0) {
			if (FUNC0(stdin) || FUNC1(stdin))
				FUNC9(0, NULL);
			break;
		}
		if (line[0] == 0)
			break;
		FUNC6();
		if (margc == 0) {
			continue;
		}
		c = FUNC3(margv[0]);
		if (c == (struct cmd *)-1) {
			FUNC7("?Ambiguous command\n");
			continue;
		}
		if (c == 0) {
			FUNC7("?Invalid command\n");
			continue;
		}
		if (c->c_conn && !connected) {
			FUNC7 ("Not connected.\n");
			continue;
		}
		(*c->c_handler)(margc, margv);
		if (bell && c->c_bell)
			(void) FUNC8('\007');
		if (c->c_handler != help)
			break;
	}
	(void) FUNC2(stdout);
//	(void) signal(SIGINT, intr);
//	(void) signal(SIGPIPE, lostpeer);
}