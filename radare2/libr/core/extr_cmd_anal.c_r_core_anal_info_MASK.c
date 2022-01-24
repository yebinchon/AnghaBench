#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fcns; } ;
struct TYPE_7__ {TYPE_3__* anal; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 (RCore *core, const char *input) {
	int fcns = FUNC13 (core->anal->fcns);
	int strs = FUNC12 (core->flags, "str.*");
	int syms = FUNC12 (core->flags, "sym.*");
	int imps = FUNC12 (core->flags, "sym.imp.*");
	int code = FUNC1 (core);
	int covr = FUNC2 (core);
	int call = FUNC0 (core);
	int xrfs = FUNC9 (core->anal);
	int cvpc = (code > 0)? (covr * 100 / code): 0;
	if (*input == 'j') {
		PJ *pj = FUNC6 ();
		if (!pj) {
			return;
		}
		FUNC7 (pj);
		FUNC5 (pj, "fcns", fcns);
		FUNC5 (pj, "xrefs", xrfs);
		FUNC5 (pj, "calls", call);
		FUNC5 (pj, "strings", strs);
		FUNC5 (pj, "symbols", syms);
		FUNC5 (pj, "imports", imps);
		FUNC5 (pj, "covrage", covr);
		FUNC5 (pj, "codesz", code);
		FUNC5 (pj, "percent", cvpc);
		FUNC3 (pj);
		FUNC11 (FUNC8 (pj));
		FUNC4 (pj);
	} else {
		FUNC10 ("fcns    %d\n", fcns);
		FUNC10 ("xrefs   %d\n", xrfs);
		FUNC10 ("calls   %d\n", call);
		FUNC10 ("strings %d\n", strs);
		FUNC10 ("symbols %d\n", syms);
		FUNC10 ("imports %d\n", imps);
		FUNC10 ("covrage %d\n", covr);
		FUNC10 ("codesz  %d\n", code);
		FUNC10 ("percent %d%%\n", cvpc);
	}
}