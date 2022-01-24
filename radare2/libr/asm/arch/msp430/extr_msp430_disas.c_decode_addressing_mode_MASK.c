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
struct msp430_cmd {char* operands; } ;
typedef  int /*<<< orphan*/  dstbuf ;

/* Variables and functions */
#define  MSP430_PC 130 
#define  MSP430_R3 129 
#define  MSP430_SR 128 
 int /*<<< orphan*/  FUNC0 (int,struct msp430_cmd*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char** msp430_register_names ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(ut16 instr, ut16 op1, ut16 op2, struct msp430_cmd *cmd)
{
	int ret = 0, srcOperInCodeWord = 0;
	ut8 as, ad, src, dst;
	ut16 op;
	char dstbuf[16];

	FUNC5(dstbuf, 0, sizeof(dstbuf));

	as = FUNC2(instr);
	ad = FUNC1(instr);
	src = FUNC4(instr);
	dst = FUNC3(instr);

	/* addressing mode of source operand */
	switch (as) {
	case 0:
		switch (src) {
		case MSP430_R3: /* CG2 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#0");
			break;
		default: /* register mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "%s", msp430_register_names[src]);
		}
		ret = 2;
		break;
	case 1:
		ret = 4;
		switch (src) {
		case MSP430_PC: /* symbolic mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "0x%04x", op1);
			srcOperInCodeWord = 1;
			break;
		case MSP430_R3: /* CG2 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "%s", "#1");
			ret = 2;
			break;
		case MSP430_SR: /* absolute mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "&0x%04x", op1);
			srcOperInCodeWord = 1;
			break;
		default: /* indexed mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "0x%x(%s)", op1, msp430_register_names[src]);
			srcOperInCodeWord = 1;
		}
		break;
	case 2:
		switch (src) {
		case MSP430_SR: /* CG1 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#4");
			break;
		case MSP430_R3: /* CG2 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#2");
			break;
		default: /* indirect register mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "@%s", msp430_register_names[src]);
		}
		ret = 2;
		break;
	case 3:
		ret = 2;
		switch (src) {
		case MSP430_SR: /* CG1 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#8");
			break;
		case MSP430_R3: /* CG2 */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#-1");
			break;
		case MSP430_PC: /* immediate mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "#0x%04x", op1);
			srcOperInCodeWord = 1;
			ret = 4;
			break;
		default: /* indirect autoincrement mode */
			FUNC6(cmd->operands, sizeof (cmd->operands), "@%s+", msp430_register_names[src]);
		}
		break;
	}

	/* addressing mode of destination operand */
	switch (ad) {
	case 0: /* register mode */
		FUNC6(dstbuf, sizeof (dstbuf), ", %s", msp430_register_names[dst]); 
		break;
	case 1:
		/* check addr. mode of source operand */
		if (srcOperInCodeWord != 0) {
		    op = op2;
		    ret = 6;
		} else {
		    op = op1;
		    ret = 4;
		}
		switch (FUNC3(instr)) {
		case MSP430_PC: /* symbolic mode */
			FUNC6(dstbuf, sizeof (dstbuf), ", 0x%04x", op);
			break;
		case MSP430_SR: /* absolute mode */
		    	FUNC6(dstbuf, sizeof (dstbuf), ", &0x%04x", op);
			break;
		default: /* indexed mode */
			FUNC6(dstbuf, sizeof (dstbuf), ", 0x%x(%s)", op, msp430_register_names[dst]);
		}
		break;
	}

	FUNC8(cmd->operands, dstbuf, sizeof (cmd->operands) - 1 - FUNC7(cmd->operands));
	FUNC0(instr, cmd);
	return ret;
}