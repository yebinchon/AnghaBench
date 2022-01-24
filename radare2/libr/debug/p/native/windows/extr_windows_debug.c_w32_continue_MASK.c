#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* params; } ;
typedef  TYPE_4__ w32dbg_wrap_instance ;
struct TYPE_12__ {int /*<<< orphan*/  io; } ;
struct TYPE_17__ {int tid; TYPE_1__ iob; TYPE_5__* user; } ;
struct TYPE_13__ {int /*<<< orphan*/  dwThreadId; int /*<<< orphan*/  dwProcessId; } ;
struct TYPE_16__ {TYPE_2__ pi; TYPE_4__* inst; } ;
struct TYPE_14__ {int continue_status; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ RIOW32Dbg ;
typedef  TYPE_6__ RDebug ;
typedef  int DWORD ;

/* Variables and functions */
 int DBG_EXCEPTION_HANDLED ; 
 int DBG_EXCEPTION_NOT_HANDLED ; 
 int /*<<< orphan*/  W32_CONTINUE ; 
 int breaked ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

int FUNC7(RDebug *dbg, int pid, int tid, int sig) {
	/* Honor the Windows-specific signal that instructs threads to process exceptions */
	RIOW32Dbg *rio = dbg->user;
	DWORD continue_status = (sig == DBG_EXCEPTION_NOT_HANDLED)
		? DBG_EXCEPTION_NOT_HANDLED : DBG_EXCEPTION_HANDLED;
	dbg->tid = FUNC3 (dbg, pid, tid);
	FUNC0 (dbg->iob.io, FUNC2 ("pid %d", dbg->tid));

	// Don't continue with a thread that wasn't requested
	if (dbg->tid != tid) {
		return -1;
	}

	if (breaked) {
		breaked = false;
		return -1;
	}
	w32dbg_wrap_instance *inst = rio->inst;
	inst->params->type = W32_CONTINUE;
	inst->params->pid = rio->pi.dwProcessId;
	inst->params->tid = rio->pi.dwThreadId;
	inst->params->continue_status = continue_status;
	FUNC4 (inst);
	if (!FUNC6 (inst)) {
		FUNC5 (inst);
		FUNC1 ("w32_continue/ContinueDebugEvent");
		return -1;
	}

	return tid;
}