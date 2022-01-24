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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int st64 ;
struct TYPE_3__ {int eob; scalar_t__ jump; int /*<<< orphan*/  dst; scalar_t__ fail; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 scalar_t__ OP2_BPcc ; 
 scalar_t__ OP2_BPr ; 
 scalar_t__ OP2_Bicc ; 
 scalar_t__ OP2_FBPfcc ; 
 scalar_t__ OP2_FBfcc ; 
 int R_ANAL_COND_ALWAYS ; 
 int R_ANAL_COND_NEVER ; 
 int R_ANAL_COND_UNKNOWN ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CJMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_JMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const,int) ; 

__attribute__((used)) static void FUNC7(RAnalOp *op, const ut32 insn, const ut64 addr) {
	st64 disp = 0;
	int r_cond = 0;
	op->eob = true;

	/* handle the conditions */
	if(FUNC2(insn) == OP2_Bicc || FUNC2(insn) == OP2_BPcc) {
		r_cond = FUNC5 (FUNC0(insn));
	} else if(FUNC2(insn) == OP2_FBfcc || FUNC2(insn) == OP2_FBPfcc) {
		r_cond = FUNC3 (FUNC0(insn));
	} else if(FUNC2(insn) == OP2_BPr) {
		r_cond = R_ANAL_COND_UNKNOWN;
	}

	if (r_cond == R_ANAL_COND_ALWAYS) {
		op->type = R_ANAL_OP_TYPE_JMP;
	} else if (r_cond == R_ANAL_COND_NEVER) {
		op->type = R_ANAL_OP_TYPE_NOP;
		return;
	} else {
		op->type = R_ANAL_OP_TYPE_CJMP;
		op->fail = addr + 4;
	}


	/* handle displacement */
	if (FUNC2 (insn) == OP2_Bicc || FUNC2 (insn) == OP2_FBfcc) {
		disp = FUNC4(insn, 21) * 4;
	} else if (FUNC2(insn) == OP2_BPcc || FUNC2 (insn) == OP2_FBPfcc) {
		disp = FUNC4 (insn, 18) * 4;
	} else if (FUNC2(insn) == OP2_BPr) {
		disp = FUNC4 (FUNC1 (insn), 15) * 4;
	}
	op->dst = FUNC6 (addr, disp);
	op->jump = addr + disp;
}