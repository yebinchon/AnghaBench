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
typedef  int /*<<< orphan*/  ut16 ;
struct msp430_cmd {size_t opcode; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msp430_cmd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char** two_op_instrs ; 

__attribute__((used)) static int FUNC6(ut16 instr, ut16 op1, ut16 op2, struct msp430_cmd *cmd)
{
	ut8 opcode = FUNC2(instr);

	FUNC3 (cmd->instr, sizeof (cmd->instr), "%s", two_op_instrs[opcode]);
	if (FUNC1 (instr)) {
		FUNC5 (cmd->instr, ".b", sizeof (cmd->instr) - 1 - FUNC4(cmd->instr));
	}

	cmd->opcode = opcode;
	return FUNC0 (instr, op1, op2, cmd);
}