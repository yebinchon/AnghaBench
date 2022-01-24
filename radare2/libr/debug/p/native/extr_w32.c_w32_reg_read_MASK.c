#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_9__ {int /*<<< orphan*/  ContextFlags; } ;
struct TYPE_8__ {int pid; int tid; } ;
typedef  TYPE_1__ RDebug ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_2__ CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(RDebug *dbg, int type, ut8 *buf, int size) {
#ifdef _MSC_VER
	CONTEXT ctx;
#else
	CONTEXT ctx __attribute__ ((aligned (16)));
#endif
	int showfpu = false;
	int pid = dbg->pid;
	int tid = dbg->tid;
	HANDLE hThread = NULL;
	if (type < -1) {
		showfpu = true; // hack for debugging
		type = -type;
	}
	hThread = FUNC6 (pid, tid);
	FUNC3(&ctx, 0, sizeof (CONTEXT));
	ctx.ContextFlags = CONTEXT_ALL ;
	if (FUNC1 (hThread, &ctx) == TRUE) {
		// on windows we dont need check type alway read/write full arena
		//if (type == R_REG_TYPE_GPR) {
			if (size > sizeof (CONTEXT)) {
				size = sizeof (CONTEXT);
			}
			FUNC2 (buf, &ctx, size);
		//} else {
		//	size = 0;
		//}
	} else {
		FUNC5 ("w32_reg_read/GetThreadContext");
		size = 0;
	}
	if (showfpu) {
		FUNC4 (hThread, &ctx);
	}
	FUNC0(hThread);
	return size;
}