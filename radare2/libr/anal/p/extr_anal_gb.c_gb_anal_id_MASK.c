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
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  esil; TYPE_2__* dst; TYPE_1__** src; } ;
struct TYPE_8__ {int memref; void* reg; } ;
struct TYPE_7__ {int imm; int absolute; } ;
typedef  TYPE_3__ RAnalOp ;
typedef  TYPE_4__ RAnal ;

/* Variables and functions */
 scalar_t__ R_ANAL_OP_TYPE_ADD ; 
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char** regs_16 ; 
 char** regs_8 ; 

__attribute__((used)) static inline void FUNC4 (RAnal *anal, RAnalOp *op, const ut8 data) {
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->src[0]->imm = 1;
	op->src[0]->absolute = true;
	if (data == 0x34 || data == 0x35) {
		op->dst->memref = 1;
		op->dst->reg = FUNC1 (anal->reg, "hl", R_REG_TYPE_GPR);
		if (op->type == R_ANAL_OP_TYPE_ADD) {
			FUNC2 (&op->esil, "1,hl,[1],+,hl,=[1],3,$c,H,:=,$z,Z,:=,0,N,:=");
		} else {
			FUNC2 (&op->esil, "1,hl,[1],-,hl,=[1],4,$b,H,:=,$z,Z,:=,1,N,:=");
		}
	} else {
		if (!(data & (1<<2))) {
			op->dst->reg = FUNC1 (anal->reg, regs_16[data>>4], R_REG_TYPE_GPR);
			if (op->type == R_ANAL_OP_TYPE_ADD) {
				FUNC3 (&op->esil, "1,%s,+=", regs_16[data>>4]);
			} else {
				FUNC3 (&op->esil, "1,%s,-=", regs_16[data >> 4]);
			}
		} else {
			op->dst->reg = FUNC1 (anal->reg, regs_8[data>>3], R_REG_TYPE_GPR);
			if (op->type == R_ANAL_OP_TYPE_ADD) {
				FUNC3 (&op->esil, "1,%s,+=,3,$c,H,:=,$z,Z,:=,0,N,:=", regs_8[data>>3]);
			} else {
				FUNC3 (&op->esil, "1,%s,-=,4,$b,H,:=,$z,Z,:=,1,N,:=", regs_8[data >> 3]);
			}
		}
	}
}