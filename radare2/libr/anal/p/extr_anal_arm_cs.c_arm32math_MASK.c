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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  csh ;
typedef  int /*<<< orphan*/  cs_insn ;
struct TYPE_3__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, csh *handle, cs_insn *insn, int pcdelta, char (*str)[32], const char *opchar, int negate) {
	const char *dest = FUNC0(0);
	const char *op1;
	const char *op2;
	bool rotate_imm = FUNC1() > 3;
	if (FUNC1() > 2) {
		 op1 = FUNC0(1);
		 op2 = FUNC0(2);
	} else {
		op1 = dest;
		op2 = FUNC0(1);
	}
	// right operand
	if (rotate_imm) {
		FUNC2 (&op->esil, "%s,", FUNC0(3));
	}
	if (!FUNC3 (op2, "pc")) {
		FUNC2 (&op->esil, "%d,$$,+", pcdelta);
	} else {
		FUNC2 (&op->esil, "%s", op2);
	}
	if (rotate_imm) {
		FUNC2 (&op->esil, ",>>>");
	}
	if (negate) {
		FUNC2 (&op->esil, ",-1,^");
	}
	if (!FUNC3 (op1, "pc")) {
		FUNC2 (&op->esil, ",%d,$$,+,%s,0xffffffff,&,%s,=", pcdelta, opchar, dest);
	} else {
		FUNC2 (&op->esil, ",%s,%s,0xffffffff,&,%s,=", op1, opchar, dest);
	}
}