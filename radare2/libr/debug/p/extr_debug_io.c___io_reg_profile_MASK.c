#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* (* system ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  io; } ;
struct TYPE_5__ {int /*<<< orphan*/  anal; TYPE_1__ iob; } ;
typedef  TYPE_2__ RDebug ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC6(RDebug *dbg) {
	FUNC3 ();
	char *drp = dbg->iob.system (dbg->iob.io, "drp");
	if (drp) {
		return drp;
	}
	const char *buf = FUNC1 ();
	if (buf && *buf) {
		char *ret = FUNC4 (buf);
		FUNC2 ();
		return ret;
	}
	return FUNC0 (dbg->anal);
}