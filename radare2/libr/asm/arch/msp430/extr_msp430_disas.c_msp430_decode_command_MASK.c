#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ut8 ;
typedef  int ut16 ;
struct msp430_cmd {char* operands; int /*<<< orphan*/  instr; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSP430_INV ; 
 int /*<<< orphan*/  MSP430_TWOOP ; 
#define  MSP430_TWOOP_OPCODE_INVALID 131 
#define  MSP430_TWOOP_OPCODE_JUMP2 130 
#define  MSP430_TWOOP_OPCODE_JUMP3 129 
#define  MSP430_TWOOP_OPCODE_SINGLEOP 128 
 int /*<<< orphan*/  FUNC0 (int,struct msp430_cmd*) ; 
 int FUNC1 (int,int,struct msp430_cmd*) ; 
 int FUNC2 (int,int,int,struct msp430_cmd*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int const*,int) ; 
 int FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 

int FUNC7(const ut8 *in, int len, struct msp430_cmd *cmd) {
	int ret = -1;
	ut16 operand1 = 0, operand2 = 0;
	if (len < 2) {
		return -1;
	}
	ut16 instr = FUNC5 (in);
	ut8 opcode = FUNC3 (instr);

	switch (opcode) {
	case MSP430_TWOOP_OPCODE_INVALID:
		// Invalid opcode.
		break;
	case MSP430_TWOOP_OPCODE_SINGLEOP:
		// Single operand instructions or invalid opcode.
		if ((instr & 0x0f80) <= 0x0300) {
			// Single operand instructions.
			if (len >= 4) {
				operand1 = FUNC4 (in, 2);
			}
			ret = FUNC1(instr, operand1, cmd);
		}
		break;
	case MSP430_TWOOP_OPCODE_JUMP2:
	case MSP430_TWOOP_OPCODE_JUMP3:
		// Jumps.
		FUNC0 (instr, cmd);
		ret = 2;
		break;
	default:
		// Double operand instructions.
		cmd->type = MSP430_TWOOP;
		if (len >= 4) {
			operand1 = FUNC4 (in, 2);
			if (len >= 6) {
				operand2 = FUNC4 (in, 4);
			}
		}
		ret = FUNC2 (instr, operand1, operand2, cmd);
		break;
	}

	/* if ret < 0, it's an invalid opcode.Say so and return 2 since
	 * all MSP430 opcodes are of 16 bits,valid or invalid */
	if (ret < 0) {
		cmd->type = MSP430_INV;
		FUNC6(cmd->instr, sizeof (cmd->instr), "invalid");
		cmd->operands[0] = '\0';
		ret = 2;
	}

	return ret;
}