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
struct TYPE_3__ {void* dst; void** src; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * base_regs ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/ * regdelta_regs ; 

__attribute__((used)) static void FUNC2(RAnalOp *op) {
	op->src[0] = FUNC1 ();
	op->src[1] = FUNC1 ();
	op->src[2] = FUNC1 ();
	op->dst = FUNC1 ();
	FUNC0 (base_regs[0]);
	FUNC0 (base_regs[1]);
	FUNC0 (base_regs[2]);
	FUNC0 (base_regs[3]);
	FUNC0 (regdelta_regs[0]);
	FUNC0 (regdelta_regs[1]);
	FUNC0 (regdelta_regs[2]);
	FUNC0 (regdelta_regs[3]);
}