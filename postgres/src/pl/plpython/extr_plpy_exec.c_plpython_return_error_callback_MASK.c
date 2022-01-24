#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* curr_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_procedure; } ;
typedef  TYPE_2__ PLyExecutionContext ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	PLyExecutionContext *exec_ctx = FUNC0();

	if (exec_ctx->curr_proc &&
		!exec_ctx->curr_proc->is_procedure)
		FUNC1("while creating return value");
}