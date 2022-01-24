#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* (* func ) (void*) ;void* user; } ;
struct TYPE_6__ {TYPE_1__ func; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {scalar_t__ th; void* func_result; int /*<<< orphan*/  result_sem; int /*<<< orphan*/  request_sem; TYPE_2__ request; } ;
typedef  TYPE_3__ ptrace_wrap_instance ;
typedef  void* (* ptrace_wrap_func_func ) (void*) ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_WRAP_REQUEST_TYPE_FUNC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *FUNC3(ptrace_wrap_instance *inst, ptrace_wrap_func_func func, void *user) {
	if (inst->th == FUNC0 ()) {
		return func (user);
	}

	inst->request.type = PTRACE_WRAP_REQUEST_TYPE_FUNC;
	inst->request.func.func = func;
	inst->request.func.user = user;
	FUNC1 (&inst->request_sem);
	FUNC2 (&inst->result_sem);
	return inst->func_result;
}