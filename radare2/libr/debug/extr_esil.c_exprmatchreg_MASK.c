#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RDebug ;

/* Variables and functions */
 scalar_t__ CURVAL ; 
 int FUNC0 (TYPE_1__*,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8 (RDebug *dbg, const char *regname, const char *expr) {
	int ret = 0;
	char *p;
	char *s = FUNC7 (expr);
	if (!s) {
		return 0;
	}
	if (!FUNC6 (regname, s)) {
		ret = 1;
	} else {
#define CURVAL 0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval
		ut64 regval = FUNC3 (dbg, regname, NULL, NULL);
		if (FUNC1 (dbg, s, ">=", &p)) {
			if (CURVAL >= FUNC4 (dbg->num, p))
				ret = 1;
		} else if (FUNC1 (dbg, s, "<=", &p)) {
			if (CURVAL <= FUNC4 (dbg->num, p))
				ret = 1;
		} else if (FUNC1 (dbg, s, "==", &p)) {
			if (CURVAL <= FUNC4 (dbg->num, p))
				ret = 1;
		} else if (FUNC1 (dbg, s, "<", &p)) {
			if (CURVAL < FUNC4 (dbg->num, p))
				ret = 1;
		} else if (FUNC1 (dbg, s, ">", &p)) {
			if (CURVAL > FUNC4 (dbg->num, p))
				ret = 1;
		} else if (FUNC1 (dbg, s, " ", &p)) {
			FUNC5 (s);
			if (!FUNC6 (regname, s)) {
				ut64 num = FUNC4 (dbg->num, p);
				ret = FUNC0 (dbg, num, s);
			}
		} else {
			if (!FUNC6 (regname, s)) {
				ret = 1;
			}
		}
	}
	FUNC2 (s);
	return ret;
}