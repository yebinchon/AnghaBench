#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_15__ {int type; } ;
struct TYPE_16__ {size_t op; int pseudoInstruction; int /*<<< orphan*/  value; void* immediate; void* csr; void* dest_reg; void* src0_reg; void* src1_reg; TYPE_14__ op_decode; } ;
typedef  TYPE_1__ RAsmLm32Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  RAsmLm32Imm16SignBitPos ; 
 int /*<<< orphan*/  RAsmLm32Imm26SignBitPos ; 
 TYPE_14__* RAsmLm32OpcodeList ; 
 size_t RAsmLm32OpcodeNumber ; 
#define  csr_reg 139 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
#define  imm26 138 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
#define  one_reg 137 
#define  raise_instr 136 
#define  reg_csr 135 
#define  reg_imm16_shift2_signextend 134 
#define  reg_imm16_signextend 133 
#define  reg_imm16_zeroextend 132 
#define  reg_imm5 131 
#define  reserved 130 
 void* FUNC18 (int,int /*<<< orphan*/ ,void*) ; 
#define  three_regs 129 
#define  two_regs 128 

__attribute__((used)) static int FUNC19(RAsmLm32Instruction *instr) {
	instr->op = FUNC3 (instr->value);
	if (instr->op >= RAsmLm32OpcodeNumber) {
		return -1;
	}
	instr->op_decode = RAsmLm32OpcodeList[instr->op];

	switch (instr->op_decode.type) {
	case reg_imm16_signextend:
		instr->dest_reg = FUNC5 (instr->value);
		instr->src0_reg = FUNC4 (instr->value);
		instr->immediate = FUNC18 (0, RAsmLm32Imm16SignBitPos,
				FUNC0 (instr->value));
		break;
	case reg_imm16_shift2_signextend:
		instr->dest_reg = FUNC5 (instr->value);
		instr->src0_reg = FUNC4 (instr->value);
		instr->immediate = FUNC18 (2, RAsmLm32Imm16SignBitPos,
				FUNC0 (instr->value));
		break;
	case reg_imm16_zeroextend:
		instr->dest_reg = FUNC5 (instr->value);
		instr->src0_reg = FUNC4 (instr->value);
		instr->immediate = FUNC0 (instr->value);
		break;
	case reg_imm5:
		if (FUNC7 (instr)) {
			return -1;
		}
		instr->dest_reg = FUNC5 (instr->value);
		instr->src0_reg = FUNC4 (instr->value);
		instr->immediate = FUNC2 (instr->value);
		break;
	case raise_instr:
		if (FUNC7 (instr)) {
			return -1;
		}
		//might be less bits used, but this shouldn't hurt
		//invalid parameters are caught in print_pseudo_instruction anyway
		instr->immediate = FUNC2 (instr->value);
		break;
	case one_reg:
		if (FUNC8 (instr)) {
			return -1;
		}
		instr->src0_reg = FUNC4 (instr->value);
		break;
	case two_regs:
		if (FUNC9 (instr)) {
			return -1;
		}
		instr->dest_reg = FUNC6 (instr->value);
		instr->src0_reg = FUNC4 (instr->value);
		break;
	case three_regs:
		instr->dest_reg = FUNC6 (instr->value);
		instr->src0_reg = FUNC5 (instr->value);
		instr->src1_reg = FUNC4 (instr->value);
		break;
	case reg_csr: //wcsr
		if (FUNC10 (instr)) {
			return -1;
		}
		instr->src0_reg = FUNC5 (instr->value);
		instr->csr = FUNC4 (instr->value);
		break;
	case csr_reg: //rcsr
		//bitmask is the same as the two register one
		if (FUNC9 (instr)) {
			return -1;
		}
		instr->dest_reg = FUNC6 (instr->value);
		instr->csr = FUNC4 (instr->value);
		break;
	case imm26:
		instr->immediate = FUNC18 (2, RAsmLm32Imm26SignBitPos,
				FUNC1 (instr->value));
		break;
	case reserved:
	default:
		return -1;
	}

	//see if the instruction corresponds to a pseudo-instruction
	instr->pseudoInstruction = FUNC17 (instr) || FUNC11 (instr) ||
			FUNC12 (instr) || FUNC15 (instr) || FUNC13 (instr) ||
			FUNC14 (instr) || FUNC16 (instr);

	return 0;
}