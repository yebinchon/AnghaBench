#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int xtensa_opcode ;
typedef  int /*<<< orphan*/  xtensa_isa ;
typedef  int /*<<< orphan*/  xtensa_insnbuf ;
typedef  int /*<<< orphan*/  xtensa_format ;
struct TYPE_27__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC25 (xtensa_isa isa, xtensa_opcode opcode, xtensa_format format,
						 size_t i, xtensa_insnbuf slot_buffer, RAnalOp *op) {
	switch (opcode) {
	case 26: /* add.n */
	case 41: /* add */
	case 43: /* addx2 */
	case 44: /* addx4 */
	case 45: /* addx8 */
	case 42: /* sub */
	case 46: /* subx2 */
	case 47: /* subx4 */
	case 48: /* subx8 */
		FUNC2 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 32: /* mov.n */
		FUNC15 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 90: /* movi */
	case 33: /* movi.n */
		FUNC17 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 0:  /* excw */
	case 34: /* nop.n */
		FUNC23 (&op->esil, "");
		break;
	// TODO: s32cli (s32c1i) is conditional (CAS)
	// should it be handled here?
	case 453: /* s32c1i */
	case 36:  /* s32i.n */
	case 100: /* s32i */
	case 99:  /* s16i */
	case 101: /* s8i */
		FUNC22 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 27: /* addi.n */
	case 39: /* addi */
		FUNC24 (isa, opcode, format, i, slot_buffer, op);
		FUNC1 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 98: /* ret */
	case 35: /* ret.n */
		FUNC23 (&op->esil, "a0,pc,=");
		break;
	case 82: /* l16ui */
	case 83: /* l16si */
	case 84: /* l32i */
	case 31: /* l32i.n */
	case 86: /* l8ui */
		FUNC13 (isa, opcode, format, i, slot_buffer, op);
		break;
	// TODO: s32r
	// l32r is different because it is relative to LITBASE
	// which also may or may not be present
	case 85: /* l32r */
		FUNC14 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 40: /* addmi */
		break;
	case 49: /* and */
	case 50: /* or */
	case 51: /* xor */
		FUNC3 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 52: /* beqi */
	case 53: /* bnei */
	case 54: /* bgei */
	case 55: /* blti */
	case 58: /* bgeui */
	case 59: /* bltui */
		FUNC8 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 56: /* bbci */
	case 57: /* bbsi */
		FUNC5 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 60: /* beq */
	case 61: /* bne */
	case 62: /* bge */
	case 63: /* blt */
	case 64: /* bgeu */
	case 65: /* bltu */
		FUNC7 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 66: /* bany */
	case 67: /* bnone */
	case 68: /* ball */
	case 69: /* bnall */
		FUNC6 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 70: /* bbc */
	case 71: /* bbs */
		FUNC4 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 72: /* beqz */
	case 73: /* bnez */
	case 28: /* beqz.n */
	case 29: /* bnez.n */
	case 74: /* bgez */
	case 75: /* bltz */
		FUNC9 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 78: /* extui */
		FUNC12 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 79: /* ill */
		FUNC23 (&op->esil, "");
		break;
	// TODO: windowed calls?
	case 7: /* call4 */
		break;
	case 76: /* call0 */
	case 80: /* j */
		FUNC10 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 81: /* jx */
	case 77: /* callx0 */
		FUNC11 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 91: /* moveqz */
	case 92: /* movnez */
	case 93: /* movltz */
	case 94: /* movgez */
		FUNC16 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 96: /* abs */
	case 95: /* neg */
		FUNC0 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 102: /* ssr */
	case 103: /* ssl */
		FUNC18 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 111: /* slli */
	case 113: /* srli */
		FUNC20 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 106: /* ssai */
		FUNC19 (isa, opcode, format, i, slot_buffer, op);
		break;
	case 107: /* sll */
	case 109: /* srl */
		FUNC21 (isa, opcode, format, i, slot_buffer, op);
		break;
	}
}