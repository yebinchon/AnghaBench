#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_info {void* data; int /*<<< orphan*/  callback; int /*<<< orphan*/  func; } ;
struct TYPE_3__ {int /*<<< orphan*/  procs; } ;
typedef  TYPE_1__ proc_handler_t ;
typedef  int /*<<< orphan*/  proc_handler_proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct proc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

void FUNC4(proc_handler_t *handler, const char *decl_string,
		      proc_handler_proc_t proc, void *data)
{
	if (!handler)
		return;

	struct proc_info pi;
	FUNC2(&pi, 0, sizeof(struct proc_info));

	if (!FUNC3(&pi.func, decl_string)) {
		FUNC0(LOG_ERROR, "Function declaration invalid: %s",
		     decl_string);
		return;
	}

	pi.callback = proc;
	pi.data = data;

	FUNC1(handler->procs, &pi);
}