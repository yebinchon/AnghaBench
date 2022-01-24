#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
typedef  int /*<<< orphan*/  cs_insn ;
struct TYPE_5__ {int /*<<< orphan*/  segment; int /*<<< orphan*/  disp; int /*<<< orphan*/  scale; } ;
struct TYPE_7__ {int type; int /*<<< orphan*/  imm; int /*<<< orphan*/  size; TYPE_1__ mem; } ;
struct TYPE_6__ {int /*<<< orphan*/ * reg; int /*<<< orphan*/  imm; int /*<<< orphan*/ * regdelta; int /*<<< orphan*/  memref; int /*<<< orphan*/  sel; int /*<<< orphan*/  delta; int /*<<< orphan*/  mul; } ;
typedef  TYPE_2__ RAnalValue ;

/* Variables and functions */
 TYPE_4__ FUNC0 (int) ; 
#define  X86_OP_IMM 130 
#define  X86_OP_MEM 129 
#define  X86_OP_REG 128 
 int /*<<< orphan*/ * base_regs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * regdelta_regs ; 

__attribute__((used)) static void FUNC2(RAnalValue *val, csh *handle, cs_insn *insn, int x) {
	FUNC1 (&base_regs[x], &regdelta_regs[x], handle, insn, x);
	switch (FUNC0 (x).type) {
	case X86_OP_MEM:
		val->mul = FUNC0 (x).mem.scale;
		val->delta = FUNC0 (x).mem.disp;
		val->sel = FUNC0 (x).mem.segment;
		val->memref = FUNC0 (x).size;
		val->regdelta = &regdelta_regs[x];
		break;
	case X86_OP_REG:
		break;
	case X86_OP_IMM:
		val->imm = FUNC0 (x).imm;
		break;
	default:
		break;
	}
	val->reg = &base_regs[x];	
}