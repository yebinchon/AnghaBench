#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_8__ {int /*<<< orphan*/  ContextFlags; } ;
struct TYPE_7__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ RDebug ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_2__ CONTEXT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(RDebug *dbg, int type, const ut8* buf, int size) {
	BOOL ret = false;
	HANDLE thread;
#if _MSC_VER
	CONTEXT ctx;
#else
	CONTEXT ctx __attribute__((aligned (16)));
#endif
	thread = FUNC4 (dbg->pid, dbg->tid);
	ctx.ContextFlags = CONTEXT_ALL;
	FUNC1 (thread, &ctx);
	// on windows we dont need check type alway read/write full arena
	//if (type == R_REG_TYPE_GPR) {
		if (size > sizeof (CONTEXT)) {
			size = sizeof (CONTEXT);
		}
		FUNC3 (&ctx, buf, size);
		ret = FUNC2 (thread, &ctx)? true: false;
	//}
	FUNC0 (thread);
	return ret;
}