#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int _mode; } ;
typedef  TYPE_1__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  DB ; 
 int R_DBG_SIGNAL_CONT ; 
 int R_DBG_SIGNAL_SKIP ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC6 (void *p, const char *k, const char *v) {
	static char key[32] = "cfg.";
	RDebug *dbg = (RDebug *)p;
	int opt, mode = dbg->_mode;
	if (FUNC0 (k) > 0) {
		FUNC5 (key + 4, k, 20);
		opt = FUNC4 (DB, key, 0);
		if (opt) {
			FUNC2 ("%s %s", k, v);
			if (opt & R_DBG_SIGNAL_CONT) {
				FUNC3 (" cont");
			}
			if (opt & R_DBG_SIGNAL_SKIP) {
				FUNC3 (" skip");
			}
			FUNC1 ();
		} else {
			if (mode == 0) {
				FUNC2 ("%s %s\n", k, v);
			}
		}
	}
	return 1;
}