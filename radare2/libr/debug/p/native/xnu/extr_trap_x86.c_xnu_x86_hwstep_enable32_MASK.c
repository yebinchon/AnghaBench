#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  gpr; } ;
typedef  TYPE_4__ xnu_thread_t ;
struct TYPE_19__ {int /*<<< orphan*/  tid; } ;
struct TYPE_15__ {int __eflags; } ;
struct TYPE_16__ {TYPE_2__ ts32; } ;
struct TYPE_14__ {scalar_t__ flavor; } ;
struct TYPE_18__ {TYPE_3__ uts; TYPE_1__ tsh; } ;
typedef  TYPE_5__ R_REG_T ;
typedef  TYPE_6__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ x86_THREAD_STATE32 ; 
 int FUNC2 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_4__*) ; 

__attribute__((used)) static bool FUNC4(RDebug *dbg, bool enable) {
	R_REG_T *state;
	xnu_thread_t *th = FUNC1 (dbg, dbg->tid);
	int ret = FUNC2 (dbg, th);
	if (!ret) {
		FUNC0 ("error to get gpr registers in trace bit intel\n");
		return false;
	}
	state = (R_REG_T *)&th->gpr;
	if (state->tsh.flavor == x86_THREAD_STATE32) {
		state->uts.ts32.__eflags = (state->uts.ts32.__eflags & \
					~0x100UL) | (enable ? 0x100UL : 0);
	} else {
		FUNC0 ("Invalid bit size\n");
		return false;
	}
	if (!FUNC3 (dbg, th)) {
		FUNC0 ("error xnu_thread_set_gpr in modify_trace_bit intel\n");
		return false;
	}
	return true;
}