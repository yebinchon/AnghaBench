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
struct TYPE_7__ {int /*<<< orphan*/  esil; TYPE_1__** src; TYPE_2__* dst; } ;
struct TYPE_6__ {void* reg; } ;
struct TYPE_5__ {void* reg; } ;
typedef  int /*<<< orphan*/  RReg ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_GPR ; 
 void* FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char** regs_16 ; 

__attribute__((used)) static inline void FUNC3 (RReg *reg, RAnalOp *op, const ut8 data) {
	op->dst = FUNC0 ();
	op->src[0] = FUNC0 ();
	op->dst->reg = FUNC1 (reg, "hl", R_REG_TYPE_GPR);
	op->src[0]->reg = FUNC1 (reg, regs_16[((data & 0xf0)>>4)], R_REG_TYPE_GPR);
	FUNC2 (&op->esil, "%s,hl,+=,0,N,:=", regs_16[((data & 0xf0)>>4)]);	//hl+=<reg>,N=0
}