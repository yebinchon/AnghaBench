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
typedef  int ut8 ;
struct TYPE_7__ {TYPE_2__** src; int /*<<< orphan*/  esil; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; } ;
struct TYPE_5__ {int memref; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regs_x ; 

__attribute__((used)) static inline void FUNC3 (RReg *reg, RAnalOp *op, const ut8 data) {
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->src[0]->imm = 1<<((data>>3) & 7);
	op->dst->memref = ((data & 7) == 6);
	op->dst->reg = FUNC1 (reg, regs_x[data & 7], R_REG_TYPE_GPR);
	if (op->dst->memref) {
		FUNC2 (&op->esil, "%i,%s,[1],&,0,==,$z,Z,:=,0,N,:=,1,H,:=", op->src[0]->imm, regs_x[data & 7]);
	} else {
		FUNC2 (&op->esil, "%i,%s,&,0,==,$z,Z,:=,0,N,:=,1,H,:=", op->src[0]->imm, regs_x[data & 7]);
	}
}