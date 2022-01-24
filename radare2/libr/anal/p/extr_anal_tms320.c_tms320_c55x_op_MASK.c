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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {char* syntax; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  type; scalar_t__ delay; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_OP_TYPE_ACMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CALL ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CCALL ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CJMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CRET ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_JMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_MOV ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_NOP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_NULL ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_POP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_PUSH ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_RET ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_SWI ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_TRAP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UCALL ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UJMP ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UNK ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_UPUSH ; 
 TYPE_2__ engine ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 

int FUNC3(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len) {
	const char * str = engine.syntax;

	op->delay = 0;
	op->size = FUNC2(&engine, buf, len);
	op->type = R_ANAL_OP_TYPE_NULL;

	str = FUNC1(str, "||") ? str + 3 : str;

	if (FUNC0(str, "B ")) {
		op->type = R_ANAL_OP_TYPE_JMP;
		if (FUNC0 (str, "B AC")) {
			op->type = R_ANAL_OP_TYPE_UJMP;
		}
	} else if (FUNC0(str, "BCC ") || FUNC0(str, "BCCU ")) {
		op->type = R_ANAL_OP_TYPE_CJMP;
	} else if (FUNC0(str, "CALL ")) {
		op->type = R_ANAL_OP_TYPE_CALL;
		if (FUNC0 (str, "CALL AC")) {
			op->type = R_ANAL_OP_TYPE_UCALL;
		}
	} else if (FUNC0(str, "CALLCC ")) {
		op->type = R_ANAL_OP_TYPE_CCALL;
	} else if (FUNC0(str, "RET")) {
		op->type = R_ANAL_OP_TYPE_RET;
		if (FUNC0 (str, "RETCC")) {
			op->type = R_ANAL_OP_TYPE_CRET;
		}
	} else if (FUNC0(str, "MOV ")) {
		op->type = R_ANAL_OP_TYPE_MOV;
	} else if (FUNC0(str, "PSHBOTH ")) {
		op->type = R_ANAL_OP_TYPE_UPUSH;
	} else if (FUNC0(str, "PSH ")) {
		op->type = R_ANAL_OP_TYPE_PUSH;
	} else if (FUNC0(str, "POPBOTH ") || FUNC0(str, "POP ")) {
		op->type = R_ANAL_OP_TYPE_POP;
	} else if (FUNC0(str, "CMP ")) {
		op->type = R_ANAL_OP_TYPE_CMP;
	} else if (FUNC0(str, "CMPAND ")) {
		op->type = R_ANAL_OP_TYPE_ACMP;
	} else if (FUNC0(str, "NOP")) {
		op->type = R_ANAL_OP_TYPE_NOP;
	} else if (FUNC0(str, "INTR ")) {
		op->type = R_ANAL_OP_TYPE_SWI;
	} else if (FUNC0(str, "TRAP ")) {
		op->type = R_ANAL_OP_TYPE_TRAP;
	} else if (FUNC0(str, "INVALID")) {
		op->type = R_ANAL_OP_TYPE_UNK;
	}

	return op->size;
}