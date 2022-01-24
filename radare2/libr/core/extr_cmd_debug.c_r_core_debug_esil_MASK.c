#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  num; int /*<<< orphan*/  dbg; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int R_PERM_R ; 
 int R_PERM_W ; 
 int R_PERM_X ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const** help_msg_de ; 
 char const** help_msg_des ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC15 (char*,char) ; 
 char* FUNC16 (char const*) ; 

__attribute__((used)) static void FUNC17 (RCore *core, const char *input) {
	switch (input[0]) {
	case '\0': // "de"
		// list
		FUNC11 (core->dbg);
		break;
	case ' ': // "de "
		{
			char *line = FUNC16 (input + 1);
			char *p, *q;
			int done = 0;
			int perm = 0, dev = 0;
			p = FUNC15 (line, ' ');
			if (p) {
				*p++ = 0;
				if (FUNC15 (line, 'r')) perm |= R_PERM_R;
				if (FUNC15 (line, 'w')) perm |= R_PERM_W;
				if (FUNC15 (line, 'x')) perm |= R_PERM_X;
				q = FUNC15 (p, ' ');
				if (q) {
					*q++ = 0;
					dev = p[0];
					if (q) {
						FUNC9 (core->dbg, perm, dev, q);
						done = 1;
					}
				}
			}
			if (!done) {
				const char *help_de_msg[] = {
					"Usage:", "de", " [perm] [reg|mem] [expr]",
					NULL
				};
				FUNC5 (core, help_de_msg);
			}
			FUNC1 (line);
		}
		break;
	case '-': // "de-"
		FUNC12 (core->dbg);
		break;
	case 'c': // "dec"
		if (FUNC10 (core->dbg)) {
			FUNC0 ("Error: no esil watchpoints defined\n");
		} else {
			FUNC4 (core, "aei");
			FUNC7 (core->dbg, FUNC2 (core->config, "esil.prestep"));
			FUNC6 (core->dbg);
		}
		break;
	case 's': // "des"
		if (input[1] == 'u' && input[2] == ' ') { // "desu"
			ut64 addr, naddr, fin = FUNC14 (core->num, input + 2);
			FUNC4 (core, "aei");
			addr = FUNC13 (core->dbg, "PC");
			while (addr != fin) {
				FUNC7 (core->dbg, FUNC2 (
							core->config, "esil.prestep"));
				FUNC8 (core->dbg, 1);
				naddr = FUNC13 (core->dbg, "PC");
				if (naddr == addr) {
					FUNC0 ("Detected loophole\n");
					break;
				}
				addr = naddr;
			}
		} else if (input[1] == '?' || !input[1]) {
			FUNC5 (core, help_msg_des);
		} else {
			FUNC4 (core, "aei");
			FUNC7 (core->dbg, FUNC2 (core->config, "esil.prestep"));
			// continue
			FUNC8 (core->dbg, FUNC14 (core->num, input + 1));
		}
		break;
	case '?': // "de?"
	default:
		{
			FUNC5 (core, help_msg_de);
			// TODO #7967 help refactor: move to detail
			FUNC3 ("Examples:\n"
					" de r r rip       # stop when reads rip\n"
					" de rw m ADDR     # stop when read or write in ADDR\n"
					" de w r rdx       # stop when rdx register is modified\n"
					" de x m FROM..TO  # stop when rip in range\n");
		}
		break;
	}
}