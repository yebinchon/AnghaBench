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
struct TYPE_7__ {int /*<<< orphan*/  esil; TYPE_2__** src; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * regs_8 ; 

__attribute__((used)) static inline void FUNC3 (RReg *reg, RAnalOp *op) {
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->dst->reg = FUNC1 (reg, regs_8[7], R_REG_TYPE_GPR);
	op->src[0]->imm = 0xff;
	FUNC2 (&op->esil, "0xff,a,^=,1,N,:=,1,H,:=");
}