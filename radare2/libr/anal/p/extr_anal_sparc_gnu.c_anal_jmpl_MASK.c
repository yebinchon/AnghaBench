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
struct TYPE_3__ {int eob; int /*<<< orphan*/  dst; int /*<<< orphan*/  type; scalar_t__ fail; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 scalar_t__ GPR_G0 ; 
 scalar_t__ GPR_I7 ; 
 scalar_t__ GPR_O7 ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_RET ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UCALL ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UJMP ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const* const,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const* const,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(RAnal const * const anal, RAnalOp *op, const ut32 insn, const ut64 addr) {
	st64 disp = 0;
	if (FUNC0 (insn)) {
		disp = FUNC4 (insn, 12);
	}

	if (FUNC1(insn) == GPR_O7) {
		op->type = R_ANAL_OP_TYPE_UCALL;
		op->fail = addr + 4;
	} else if (FUNC1(insn) == GPR_G0
		&& FUNC0(insn) == 1
		&& (FUNC2(insn) == GPR_I7 || FUNC2(insn) == GPR_O7)
		&& disp == 8) {
			op->type = R_ANAL_OP_TYPE_RET;
			op->eob = true;
			return;
		 }
	else {
		op->type = R_ANAL_OP_TYPE_UJMP;
		op->eob = true;
	}

	if(FUNC0(insn)) {
		op->dst = FUNC5(anal, FUNC2(insn), disp);
	} else {
		op->dst = FUNC6(anal, FUNC2(insn), FUNC3(insn));
	}
}