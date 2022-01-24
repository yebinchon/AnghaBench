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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int ut16 ;
struct propeller_cmd {int dst; int src; int immed; int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROP_INSTR_MAXLEN ; 
#define  PROP_JMP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5 (struct propeller_cmd *cmd, ut32 instr) {
	ut16 opcode;
	ut8 zcri;
	int ret = 1;
	opcode = FUNC1 (instr);
	switch (opcode) {
		case PROP_JMP:
			zcri = FUNC3 (instr);
			if (zcri & 0x2) {
				FUNC4 (cmd->instr, PROP_INSTR_MAXLEN - 1,
						"%s", "jmpret");
				if (zcri & 1) {
					cmd->dst = FUNC0 (instr) << 2;
					cmd->src = FUNC2 (instr) << 2;

					FUNC4 (cmd->operands, PROP_INSTR_MAXLEN - 1,
							"0x%x, #0x%x", FUNC0 (instr), FUNC2 (instr) << 2);
				} else {
					cmd->src = FUNC2 (instr) << 2;
					cmd->dst = FUNC0 (instr) << 2;
					FUNC4 (cmd->operands, PROP_INSTR_MAXLEN - 1,
							"0x%x, 0x%x", FUNC0 (instr), FUNC2 (instr) << 2);
				}
			} else {
				FUNC4 (cmd->instr, PROP_INSTR_MAXLEN - 1,
						"%s", "jmp");
				if (zcri & 1) {
					cmd->src = FUNC2 (instr) << 2;
					cmd->immed = 1;
					FUNC4 (cmd->operands, PROP_INSTR_MAXLEN - 1,
							"#0x%x", FUNC2 (instr) << 2);
				} else {
					cmd->immed = 0;
					cmd->src = FUNC2 (instr) << 2; 
					FUNC4 (cmd->operands, PROP_INSTR_MAXLEN - 1,
							"0x%x", FUNC2 (instr) << 2);
				}
			}

			ret = 4;
			break;
	}


	return ret;
}