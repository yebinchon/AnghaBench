#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_10__ {int /*<<< orphan*/  reg; } ;
struct TYPE_9__ {TYPE_2__** src; int /*<<< orphan*/  esil; TYPE_1__* dst; } ;
struct TYPE_8__ {int imm; } ;
struct TYPE_7__ {int memref; int /*<<< orphan*/  reg; } ;
typedef  TYPE_3__ RAnalOp ;
typedef  TYPE_4__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * regs_x ; 

__attribute__((used)) static inline void FUNC3 (RAnal *anal, RAnalOp *op, const ut8 data) {
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->src[0]->imm = ((~(0x1 << ((data >> 3) & 7))) & 0xff);
	op->dst->memref = ((data & 7) == 6);
	op->dst->reg = FUNC1 (anal->reg, regs_x[data & 7], R_REG_TYPE_GPR);
	if (op->dst->memref) {
		FUNC2 (&op->esil, "0x%02x,%s,[1],&,%s,=[1]", op->src[0]->imm, regs_x[data & 7], regs_x[data & 7]);
	} else {
		FUNC2 (&op->esil, "0x%02x,%s,&=", op->src[0]->imm, regs_x[data & 7]);
	}
}