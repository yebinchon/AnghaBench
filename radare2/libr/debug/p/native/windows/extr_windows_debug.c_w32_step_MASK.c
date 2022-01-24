#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ctx ;
struct TYPE_10__ {int EFlags; } ;
struct TYPE_8__ {int /*<<< orphan*/  signum; } ;
struct TYPE_9__ {TYPE_1__ reason; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ RDebug ;
typedef  TYPE_3__ CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC3(RDebug *dbg) {
	/* set TRAP flag */
	CONTEXT ctx;
	if (!FUNC1 (dbg, R_REG_TYPE_GPR, (ut8 *)&ctx, sizeof (ctx))) {
		return false;
	}
	ctx.EFlags |= 0x100;
	if (!FUNC2 (dbg, R_REG_TYPE_GPR, (ut8 *)&ctx, sizeof (ctx))) {
		return false;
	}
	return FUNC0 (dbg, dbg->pid, dbg->tid, dbg->reason.signum);
	// (void)r_debug_handle_signals (dbg);
}