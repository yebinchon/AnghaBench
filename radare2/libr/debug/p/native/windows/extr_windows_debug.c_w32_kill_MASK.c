#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* params; } ;
struct TYPE_10__ {int /*<<< orphan*/  threads; TYPE_3__* user; } ;
struct TYPE_8__ {int /*<<< orphan*/ * hProcess; } ;
struct TYPE_9__ {TYPE_2__ pi; TYPE_5__* inst; } ;
struct TYPE_7__ {int pid; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ RIOW32Dbg ;
typedef  TYPE_4__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  W32_DETTACH ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  wait_time ; 

int FUNC7(RDebug *dbg, int pid, int tid, int sig) {
	RIOW32Dbg *rio = dbg->user;

	if (sig == 0) {
		if (!FUNC3 (rio->pi.hProcess)) {
			FUNC4 (dbg->threads);
			return false;
		}
		return true;
	}
	
	rio->inst->params->type = W32_DETTACH;
	rio->inst->params->pid = pid;
	FUNC6 (rio->inst);
	
	bool ret = false;
	if (FUNC1 (rio->pi.hProcess, 1)) {
		if (FUNC2 (rio->pi.hProcess, wait_time) != WAIT_OBJECT_0) {
			FUNC5 ("w32_kill/WaitForSingleObject");
		} else {
			ret = true;
		}
	}
	FUNC4 (dbg->threads);
	FUNC0 (rio->pi.hProcess);
	rio->pi.hProcess = NULL;
	return ret;
}