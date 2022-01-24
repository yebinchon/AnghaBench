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
struct TYPE_7__ {int /*<<< orphan*/  esil; TYPE_2__* dst; TYPE_1__** src; } ;
struct TYPE_6__ {void* reg; } ;
struct TYPE_5__ {int memref; int absolute; void* reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 char** regs_8 ; 

__attribute__((used)) static inline void FUNC5 (RReg *reg, RAnalOp *op, const ut8 data)	//load with [hl] as memref
{
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->src[0]->reg = FUNC1 (reg, "hl", R_REG_TYPE_GPR);
	op->src[0]->memref = 1;
	op->src[0]->absolute = true;
	op->dst->reg = FUNC1 (reg, regs_8[((data & 0x38)>>3)], R_REG_TYPE_GPR);
	FUNC4 (&op->esil, "hl,[1],%s,=", regs_8[((data & 0x38)>>3)]);
	if (data == 0x3a) {
		FUNC2 (&op->esil, ",1,hl,-=");
	}
	if (data == 0x2a) {
		FUNC3 (&op->esil, "hl,[1],a,=,1,hl,+=");			//hack in concept
	}
}