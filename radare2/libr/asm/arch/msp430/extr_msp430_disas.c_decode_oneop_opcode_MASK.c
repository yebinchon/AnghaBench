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
typedef  size_t ut8 ;
typedef  int ut16 ;
struct msp430_cmd {int opcode; char* operands; int /*<<< orphan*/  type; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
#define  MSP430_CALL 137 
 int /*<<< orphan*/  MSP430_ONEOP ; 
#define  MSP430_PC 136 
#define  MSP430_PUSH 135 
#define  MSP430_R3 134 
#define  MSP430_RETI 133 
#define  MSP430_RRA 132 
#define  MSP430_RRC 131 
#define  MSP430_SR 130 
#define  MSP430_SWPB 129 
#define  MSP430_SXT 128 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (int) ; 
 char** msp430_register_names ; 
 char** one_op_instrs ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC4(ut16 instr, ut16 op, struct msp430_cmd *cmd)
{
	int ret = 2;
	ut8 as, opcode;

	opcode = FUNC2(instr);

	as = FUNC0(instr);

	FUNC3(cmd->instr, sizeof (cmd->instr), "%s", one_op_instrs[opcode]);

	cmd->opcode = FUNC2(instr);

	switch (FUNC2(instr)) {
	case MSP430_RRC:
	case MSP430_SWPB:
	case MSP430_RRA:
	case MSP430_SXT:
	case MSP430_PUSH:
	case MSP430_CALL:
		switch (as) {
		case 0:
			switch (FUNC1(instr)) {
			case MSP430_R3:
				FUNC3(cmd->operands, sizeof (cmd->operands), "#0");
				break;
			default:
				FUNC3(cmd->operands, sizeof (cmd->operands),
						"%s", msp430_register_names[FUNC1(instr)]);
			}
			ret = 2;
			break;
		case 1:
			/* most of these instructions take another word as an immediate */
			ret = 4;
			switch (FUNC1(instr)) {
			case MSP430_R3:
				FUNC3(cmd->operands, sizeof (cmd->operands), "#1");
				/* this is an unusual encoding in that there's no index word */
				ret = 2;
				break;
			case MSP430_PC:
				FUNC3(cmd->operands, sizeof (cmd->operands), "0x%04x", op);
				break;
			case MSP430_SR:
				FUNC3(cmd->operands, sizeof (cmd->operands), "&0x%04x", op);
				break;
			default:
				FUNC3(cmd->operands, sizeof (cmd->operands),
						"0x%x(%s)", op, msp430_register_names[FUNC1(instr)]);
			}

			break;
		case 2:
			switch (FUNC1(instr)) {
			case MSP430_SR:
				FUNC3(cmd->operands, sizeof (cmd->operands), "#4");
				break;
			case MSP430_R3:
				FUNC3(cmd->operands, sizeof (cmd->operands), "#2");
				break;
			default:
				FUNC3(cmd->operands, sizeof (cmd->operands),
						"@%s", msp430_register_names[FUNC1(instr)]);
			}

			ret = 2;
			break;
		case 3:
			FUNC3(cmd->operands, sizeof (cmd->operands), "#0x%04x", op);
			ret = 4;
			break;
		default:
			ret = -1;
		}
		break;
	case MSP430_RETI:
		cmd->operands[0] = '\0';
		break;
	}

	cmd->type = MSP430_ONEOP;

	return ret;
}