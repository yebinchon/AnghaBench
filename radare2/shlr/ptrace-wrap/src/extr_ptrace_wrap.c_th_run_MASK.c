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
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {int /*<<< orphan*/  result_sem; TYPE_1__ request; int /*<<< orphan*/  request_sem; } ;
typedef  TYPE_2__ ptrace_wrap_instance ;

/* Variables and functions */
#define  PTRACE_WRAP_REQUEST_TYPE_FORK 131 
#define  PTRACE_WRAP_REQUEST_TYPE_FUNC 130 
#define  PTRACE_WRAP_REQUEST_TYPE_PTRACE 129 
#define  PTRACE_WRAP_REQUEST_TYPE_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void *FUNC5(ptrace_wrap_instance *inst) {
	while (1) {
		FUNC1 (&inst->request_sem);
		switch (inst->request.type) {
		case PTRACE_WRAP_REQUEST_TYPE_STOP:
			goto stop;
		case PTRACE_WRAP_REQUEST_TYPE_PTRACE:
			FUNC4 (inst);
			break;
		case PTRACE_WRAP_REQUEST_TYPE_FORK:
			FUNC2 (inst);
			break;
		case PTRACE_WRAP_REQUEST_TYPE_FUNC:
			FUNC3 (inst);
			break;
		}
		FUNC0 (&inst->result_sem);
	}
stop:
	return NULL;
}