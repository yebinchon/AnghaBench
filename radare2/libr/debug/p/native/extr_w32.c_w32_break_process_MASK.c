#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ RDebug ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PROCESS_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *d) {
	RDebug *dbg = (RDebug *)d;
	HANDLE h_proc = FUNC3 (PROCESS_ALL_ACCESS, FALSE, dbg->pid);
	if (!h_proc) {
		FUNC1 ("w32_break_process/w32_OpenProcess");
		goto err_w32_break_process;
	}
	if (!FUNC2 (h_proc)) {
		FUNC1 ("w32_break_process/w32_DebugBreakProcess");
		goto err_w32_break_process;
	}
err_w32_break_process:
	if (h_proc) {
		FUNC0 (h_proc);
	}
}