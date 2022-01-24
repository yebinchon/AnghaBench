#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__** arg; } ;
typedef  TYPE_1__ RAnalReilInst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(RAnalReilInst *ins) {
	if (!ins) {
		return;
	}
	if (ins->arg[0]) { FUNC0 (ins->arg[0]); }
	if (ins->arg[1]) { FUNC0 (ins->arg[1]); }
	if (ins->arg[2]) { FUNC0 (ins->arg[2]); }
	FUNC0(ins);
}