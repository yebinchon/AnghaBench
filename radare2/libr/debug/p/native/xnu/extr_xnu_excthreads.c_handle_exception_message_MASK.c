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
typedef  int kern_return_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int exception; TYPE_2__ thread; TYPE_1__ task; } ;
typedef  TYPE_3__ exc_msg ;
typedef  int /*<<< orphan*/  RDebug ;

/* Variables and functions */
#define  EXC_ARITHMETIC 133 
#define  EXC_BAD_ACCESS 132 
#define  EXC_BAD_INSTRUCTION 131 
#define  EXC_BREAKPOINT 130 
#define  EXC_EMULATION 129 
#define  EXC_SOFTWARE 128 
 int KERN_FAILURE ; 
 int KERN_SUCCESS ; 
 int R_DEBUG_REASON_BREAKPOINT ; 
 int R_DEBUG_REASON_ILLEGAL ; 
 int R_DEBUG_REASON_SEGFAULT ; 
 int R_DEBUG_REASON_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (RDebug *dbg, exc_msg *msg, int *ret_code) {
	int ret = R_DEBUG_REASON_UNKNOWN;
	kern_return_t kr;
	*ret_code = KERN_SUCCESS;
	switch (msg->exception) {
	case EXC_BAD_ACCESS:
		ret = R_DEBUG_REASON_SEGFAULT;
		*ret_code = KERN_FAILURE;
		kr = FUNC3 (msg->task.name);
		if (kr != KERN_SUCCESS) {
			FUNC0 ("failed to suspend task bad access\n");
		}
		FUNC0 ("EXC_BAD_ACCESS\n");
		break;
	case EXC_BAD_INSTRUCTION:
		ret = R_DEBUG_REASON_ILLEGAL;
		*ret_code = KERN_FAILURE;
		kr = FUNC3 (msg->task.name);
		if (kr != KERN_SUCCESS) {
			FUNC0 ("failed to suspend task bad instruction\n");
		}
		FUNC0 ("EXC_BAD_INSTRUCTION\n");
		break;
	case EXC_ARITHMETIC:
		FUNC0 ("EXC_ARITHMETIC\n");
		break;
	case EXC_EMULATION:
		FUNC0 ("EXC_EMULATION\n");
		break;
	case EXC_SOFTWARE:
		FUNC0 ("EXC_SOFTWARE\n");
		break;
	case EXC_BREAKPOINT:
		kr = FUNC3 (msg->task.name);
		if (kr != KERN_SUCCESS) {
			FUNC0 ("failed to suspend task breakpoint\n");
		}
		ret = R_DEBUG_REASON_BREAKPOINT;
		break;
	default:
		FUNC0 ("UNKNOWN\n");
		break;
	}
	kr = FUNC1 (FUNC2 (), msg->task.name);
	if (kr != KERN_SUCCESS) {
		FUNC0 ("failed to deallocate task port\n");
	}
	kr = FUNC1 (FUNC2 (), msg->thread.name);
	if (kr != KERN_SUCCESS) {
		FUNC0 ("failed to deallocated task port\n");
	}
	return ret;
}