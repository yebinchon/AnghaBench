#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_3__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int has_match ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4 (RDebug *dbg, ut64 addr, const char *expr) {
	char *e = FUNC2 (expr);
	if (!e) {
		return 0;
	}
	char *p = FUNC3 (e, "..");
	ut64 a,b;
	int ret = 0;
	if (p) {
		*p = 0;
		p += 2;
		a = FUNC1 (dbg->num, e);
		b = FUNC1 (dbg->num, p);
		if (a<b) {
			if (addr >= a && addr <= b) {
				ret = 1;
			}
		} else {
			if (addr >= b && addr <= a) {
				ret = 1;
			}
		}
	} else {
		a = FUNC1 (dbg->num, e);
		if (addr == a) {
			ret = 1;
		}
	}
	has_match = ret;
	FUNC0 (e);
	return ret;
}