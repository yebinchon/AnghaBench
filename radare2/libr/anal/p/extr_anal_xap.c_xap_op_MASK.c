#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
typedef  int ut16 ;
struct state {int s_off; int /*<<< orphan*/  const* s_buf; scalar_t__ s_prefix; int /*<<< orphan*/ * s_out; int /*<<< orphan*/  member_0; } ;
struct instruction {int /*<<< orphan*/  in_reg; int /*<<< orphan*/  in_opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct directive {int d_inst; int d_off; int size; int jump; int eob; int /*<<< orphan*/  fail; void* type; int /*<<< orphan*/  d_operand; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  ins ;
typedef  int /*<<< orphan*/  RAnalOpMask ;
typedef  struct directive RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
#define  INST_BC 131 
#define  INST_BRK 130 
#define  INST_BRXL 129 
#define  INST_NOP 128 
 void* R_ANAL_OP_TYPE_ADD ; 
 void* R_ANAL_OP_TYPE_AND ; 
 void* R_ANAL_OP_TYPE_CALL ; 
 void* R_ANAL_OP_TYPE_CJMP ; 
 void* R_ANAL_OP_TYPE_CMP ; 
 void* R_ANAL_OP_TYPE_DIV ; 
 void* R_ANAL_OP_TYPE_JMP ; 
 void* R_ANAL_OP_TYPE_MUL ; 
 void* R_ANAL_OP_TYPE_NOP ; 
 void* R_ANAL_OP_TYPE_OR ; 
 void* R_ANAL_OP_TYPE_POP ; 
 void* R_ANAL_OP_TYPE_PUSH ; 
 void* R_ANAL_OP_TYPE_SUB ; 
 void* R_ANAL_OP_TYPE_TRAP ; 
 void* R_ANAL_OP_TYPE_UNK ; 
 void* R_ANAL_OP_TYPE_XOR ; 
 int /*<<< orphan*/  FUNC0 (struct state*,struct directive*) ; 
 int FUNC1 (struct instruction*) ; 
 void* FUNC2 (struct directive*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct directive*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct state*,struct directive*) ; 

__attribute__((used)) static int FUNC6(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *bytes, int len, RAnalOpMask mask) {
	struct instruction *in = (struct instruction *)bytes;
	ut16 lol, ins;
	struct directive d = {0};
	struct state s = {0};

	if (!anal || !op) {
		return 2;
	}

	FUNC3 (&ins, bytes, sizeof (ins));
	FUNC3 (&lol, bytes, sizeof (ins));
	s.s_buf = (void *)bytes;
	s.s_off = addr;
	s.s_out = NULL;
	s.s_prefix = 0;
	FUNC4 (&d, '\0', sizeof (struct directive));
	FUNC3 (&d.d_inst, s.s_buf, sizeof (d.d_inst));
	s.s_off += 2;
	d.d_off = s.s_off;
	FUNC5 (&s, &d);
	d.d_operand = FUNC0 (&s, &d);

	FUNC4 (op, 0, sizeof (RAnalOp));
	op->type = R_ANAL_OP_TYPE_UNK;
	op->size = 2;

	switch (FUNC1 (in)) {
	case INST_NOP:
		op->type = R_ANAL_OP_TYPE_NOP;
		break;
	case INST_BRK:
		op->type = R_ANAL_OP_TYPE_TRAP;
		break;
	case INST_BC:
		op->type = R_ANAL_OP_TYPE_TRAP;
		break;
	case INST_BRXL:
		op->type = R_ANAL_OP_TYPE_TRAP;
		break;
	default:
		switch (in->in_opcode) {
		case 0:
			switch (lol&0xf) {
			case 1:
			case 2:
			case 3:
			case 0xa:
				op->type = R_ANAL_OP_TYPE_PUSH;
				break;
			case 4:
			case 5:
			case 6:
			case 7:
			case 0xe:
				op->type = R_ANAL_OP_TYPE_POP;
				break;
			}
			break;
		case 1:
			op->type = R_ANAL_OP_TYPE_POP;
			break;
		case 2:
			op->type = R_ANAL_OP_TYPE_PUSH;
			break;
		case 3:
		case 4:
		case 7:
			op->type = R_ANAL_OP_TYPE_ADD;
			break;
		case 5:
		case 6:
			op->type = R_ANAL_OP_TYPE_SUB;
			break;
		case 8:
			op->type = R_ANAL_OP_TYPE_CMP;
			break;
		case 9:
			switch(in->in_reg) {
			case 0:
				op->type = R_ANAL_OP_TYPE_MUL;
				break;
			case 1:
				op->type = R_ANAL_OP_TYPE_DIV;
				break;
			case 2:
				op->type = R_ANAL_OP_TYPE_CMP;
				break;
			case 3:
				// BSR
				op->type = R_ANAL_OP_TYPE_CALL;
				op->jump = FUNC2 (&d);
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->fail = addr+2;
				op->eob = true;
				break;
			}
			break;
		case 0xb:
			op->type = R_ANAL_OP_TYPE_OR;
			break;
		case 0xc:
			op->type = R_ANAL_OP_TYPE_AND;
			break;
		case 0xd:
			op->type = R_ANAL_OP_TYPE_XOR;
			break;
		case 0xe:
			switch (in->in_reg) {
			case 0: // BRA
				op->type = R_ANAL_OP_TYPE_JMP;
				op->jump = FUNC2 (&d)+4;
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->eob = true;
				break;
			case 1:
				// BLT
				op->type = R_ANAL_OP_TYPE_CJMP;
				op->jump = FUNC2 (&d);
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->fail = addr + 2;
				op->eob = true;
				break;
			case 2:
				// BPL
				op->type = R_ANAL_OP_TYPE_CJMP;
				op->jump = FUNC2 (&d);
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->fail = addr + 2;
				op->eob = true;
				break;
			case 3:
				// BMI
				op->type = R_ANAL_OP_TYPE_CJMP;
				op->jump = FUNC2 (&d);
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->fail = addr + 2;
				op->eob = true;
				break;
			}
			break;
		case 0xf:
			switch (in->in_reg) {
			case 0: // BNE
			case 1: // BEQ
			case 2: // BCC
			case 3: // BCS
				op->type = R_ANAL_OP_TYPE_CJMP;
				op->jump = FUNC2 (&d);
				if (op->jump & 1) {
					op->jump += 3;
				}
				op->fail = addr+2;
				break;
			}
			break;
		}
		break;
	}
	return op->size;
}