#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct TYPE_4__ {int offset; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int R_ANAL_ADDR_TYPE_ASCII ; 
 int R_ANAL_ADDR_TYPE_EXEC ; 
 int R_ANAL_ADDR_TYPE_FLAG ; 
 int R_ANAL_ADDR_TYPE_FUNC ; 
 int R_ANAL_ADDR_TYPE_HEAP ; 
 int R_ANAL_ADDR_TYPE_LIBRARY ; 
 int R_ANAL_ADDR_TYPE_PROGRAM ; 
 int R_ANAL_ADDR_TYPE_READ ; 
 int R_ANAL_ADDR_TYPE_REG ; 
 int R_ANAL_ADDR_TYPE_SEQUENCE ; 
 int R_ANAL_ADDR_TYPE_STACK ; 
 int R_ANAL_ADDR_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC10(RCore *core, const char *addrstr, int fmt) {
	ut64 addr, type;
	if (!addrstr || !*addrstr) {
		addr = core->offset;
	} else {
		addr = FUNC9 (core->num, addrstr);
	}
	type = FUNC8 (core, addr);
	switch (fmt) {
	case 'j': {
		PJ *pj = FUNC3 ();
		if (!pj) {
			return;
		}
		FUNC4 (pj);
		if (type & R_ANAL_ADDR_TYPE_PROGRAM)
			FUNC2 (pj, "program", "true");
		if (type & R_ANAL_ADDR_TYPE_LIBRARY)
			FUNC2 (pj, "library", "true");
		if (type & R_ANAL_ADDR_TYPE_EXEC)
			FUNC2 (pj, "exec", "true");
		if (type & R_ANAL_ADDR_TYPE_READ)
			FUNC2 (pj, "read", "true");
		if (type & R_ANAL_ADDR_TYPE_WRITE)
			FUNC2 (pj, "write", "true");
		if (type & R_ANAL_ADDR_TYPE_FLAG)
			FUNC2 (pj, "flag", "true");
		if (type & R_ANAL_ADDR_TYPE_FUNC)
			FUNC2 (pj, "func", "true");
		if (type & R_ANAL_ADDR_TYPE_STACK)
			FUNC2 (pj, "stack", "true");
		if (type & R_ANAL_ADDR_TYPE_HEAP)
			FUNC2 (pj, "heap", "true");
		if (type & R_ANAL_ADDR_TYPE_REG)
			FUNC2 (pj, "reg", "true");
		if (type & R_ANAL_ADDR_TYPE_ASCII)
			FUNC2 (pj, "ascii", "true");
		if (type & R_ANAL_ADDR_TYPE_SEQUENCE)
			FUNC2 (pj, "sequence", "true");
		FUNC0 (pj);
		FUNC7 (FUNC5 (pj));
		FUNC1 (pj);
		}
		break;
	default:
		if (type & R_ANAL_ADDR_TYPE_PROGRAM)
			FUNC6 ("program\n");
		if (type & R_ANAL_ADDR_TYPE_LIBRARY)
			FUNC6 ("library\n");
		if (type & R_ANAL_ADDR_TYPE_EXEC)
			FUNC6 ("exec\n");
		if (type & R_ANAL_ADDR_TYPE_READ)
			FUNC6 ("read\n");
		if (type & R_ANAL_ADDR_TYPE_WRITE)
			FUNC6 ("write\n");
		if (type & R_ANAL_ADDR_TYPE_FLAG)
			FUNC6 ("flag\n");
		if (type & R_ANAL_ADDR_TYPE_FUNC)
			FUNC6 ("func\n");
		if (type & R_ANAL_ADDR_TYPE_STACK)
			FUNC6 ("stack\n");
		if (type & R_ANAL_ADDR_TYPE_HEAP)
			FUNC6 ("heap\n");
		if (type & R_ANAL_ADDR_TYPE_REG)
			FUNC6 ("reg\n");
		if (type & R_ANAL_ADDR_TYPE_ASCII)
			FUNC6 ("ascii\n");
		if (type & R_ANAL_ADDR_TYPE_SEQUENCE)
			FUNC6 ("sequence\n");
		break;
	}
}