#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_1__* params; } ;
struct TYPE_23__ {TYPE_5__* user; } ;
struct TYPE_22__ {int pid; } ;
struct TYPE_19__ {int dwThreadId; scalar_t__ hProcess; } ;
struct TYPE_21__ {TYPE_3__ pi; TYPE_8__* inst; } ;
struct TYPE_20__ {scalar_t__ length; TYPE_2__* head; } ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_17__ {int pid; int /*<<< orphan*/  ret; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ RList ;
typedef  TYPE_5__ RIOW32Dbg ;
typedef  TYPE_6__ RDebugPid ;
typedef  TYPE_7__ RDebug ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  W32_ATTACH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  w32_PROCESS_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 
 TYPE_4__* FUNC6 (TYPE_7__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 

int FUNC9(RDebug *dbg, int pid) {
	RIOW32Dbg *rio = dbg->user;
	if (rio->pi.hProcess) {
		return rio->pi.dwThreadId;
	}
	HANDLE ph = FUNC4 (w32_PROCESS_ALL_ACCESS, FALSE, pid);
	if (!ph) {
		return -1;
	}
	rio->inst->params->type = W32_ATTACH;
	rio->inst->params->pid = pid;
	FUNC7 (rio->inst);
	if (!rio->inst->params->ret) {
		FUNC8 (rio->inst);
		FUNC3 ("DebugActiveProcess");
		FUNC0 (ph);
		return -1;
	}
	RList *threads = FUNC2 ();
	if (!threads) {
		FUNC0 (ph);
		return -1;
	}
	threads = FUNC6 (dbg, pid, threads);
	if (threads->length == 0) {
		FUNC1 (threads);
		FUNC0 (ph);
		return -1;
	}
	int tid = ((RDebugPid *)threads->head->data)->pid;
	FUNC1 (threads);
	rio->pi.hProcess = ph;
	FUNC5 (dbg, pid);

	return tid;
}