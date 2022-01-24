#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  core; scalar_t__ (* cfggeti ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_10__ {TYPE_1__ corebind; TYPE_3__* user; } ;
struct TYPE_8__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  dwProcessId; } ;
struct TYPE_9__ {TYPE_2__ pi; } ;
typedef  TYPE_3__ RIOW32Dbg ;
typedef  TYPE_4__ RDebug ;

/* Variables and functions */
 int breaked ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(RDebug *dbg) {
	RIOW32Dbg *rio = dbg->user;
	if (dbg->corebind.cfggeti (dbg->corebind.core, "dbg.threads")) {
		FUNC4 (dbg, rio->pi.dwProcessId, 0); // Suspend all threads
	} else {
		if (!FUNC3 (rio->pi.hProcess)) {
			FUNC1 ("w32_break_process/DebugBreakProcess");
			FUNC0("Could not interrupt program, attempt to press Ctrl-C in the program's console.\n");
		}
	}

	breaked = true;
}