#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_6__ {int /*<<< orphan*/  esil; TYPE_1__** src; TYPE_1__* dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_1__ RAnalValue ;
typedef  TYPE_2__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regs_16_alt ; 

__attribute__((used)) static inline void FUNC3 (RReg *reg, RAnalOp *op, const ut8 data)		//push , pop
{
	RAnalValue *val = FUNC0 ();
	val->reg = FUNC1 (reg, regs_16_alt[(data>>4) - 12], R_REG_TYPE_GPR);
	if ((data & 0xf) == 1) {
		op->dst = val;
		FUNC2 (&op->esil, "sp,[2],%s,=,2,sp,+=", regs_16_alt[(data>>4) - 12]);		//pop
	} else {
		op->src[0] = val;
		FUNC2 (&op->esil, "2,sp,-=,%s,sp,=[2]", regs_16_alt[(data>>4) - 12]);		//push
	}
}