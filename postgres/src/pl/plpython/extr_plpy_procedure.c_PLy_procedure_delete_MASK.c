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
struct TYPE_3__ {int /*<<< orphan*/  mcxt; int /*<<< orphan*/  globals; int /*<<< orphan*/  statics; int /*<<< orphan*/  code; } ;
typedef  TYPE_1__ PLyProcedure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(PLyProcedure *proc)
{
	FUNC1(proc->code);
	FUNC1(proc->statics);
	FUNC1(proc->globals);
	FUNC0(proc->mcxt);
}