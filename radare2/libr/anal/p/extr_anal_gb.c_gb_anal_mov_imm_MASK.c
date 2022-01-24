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
struct TYPE_7__ {int val; TYPE_2__** src; int /*<<< orphan*/  esil; TYPE_1__* dst; } ;
struct TYPE_6__ {int imm; int absolute; } ;
struct TYPE_5__ {void* reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 int FUNC0 (int const,int const) ; 
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regs_16 ; 
 int /*<<< orphan*/ * regs_8 ; 

__attribute__((used)) static void FUNC4 (RReg *reg, RAnalOp *op, const ut8 *data) {
	op->dst = FUNC1 ();
	op->src[0] = FUNC1 ();
	if (data[0] & 1) {
		op->dst->reg = FUNC2 (reg, regs_16[data[0]>>4], R_REG_TYPE_GPR);
		op->src[0]->imm = FUNC0 (data[1], data[2]);
		FUNC3 (&op->esil, "0x%04x,%s,=", op->src[0]->imm, regs_16[data[0]>>4]);
	} else {
		op->dst->reg = FUNC2 (reg, regs_8[data[0]>>3], R_REG_TYPE_GPR);
		op->src[0]->imm = data[1];
		FUNC3 (&op->esil, "0x%02x,%s,=", op->src[0]->imm, regs_8[data[0]>>3]);
	}
	op->src[0]->absolute = true;
	op->val = op->src[0]->imm;
}