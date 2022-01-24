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
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC5 (void *p, const char *k, const char *v) {
	static char key[32] = "cfg.";
	RDebug *dbg = (RDebug *)p;
	int opt;
	if (FUNC0 (k)>0) {
		FUNC4 (key + 4, k, 20);
		opt = (int)FUNC3 (DB, key, 0);
		if (dbg->_mode == 2) {
			dbg->_mode = 0;
		} else {
			FUNC2 (",");
		}
		FUNC1 ("{\"signum\":\"%s\",\"name\":\"%s\",\"option\":", k, v);
		if (opt & R_DBG_SIGNAL_CONT) {
			FUNC2 ("\"cont\"");
		} else if (opt & R_DBG_SIGNAL_SKIP) {
			FUNC2 ("\"skip\"");
		} else {
			FUNC2 ("null");
		}
		FUNC2 ("}");
	}
	return true;
}