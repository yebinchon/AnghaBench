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
typedef  int ut16 ;
struct v810_cmd {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;
typedef  int st16 ;

/* Variables and functions */
 size_t FUNC0 (int const) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int const) ; 
 size_t V810_ADDI ; 
 scalar_t__ V810_INSTR_MAXLEN ; 
 char** instrs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

__attribute__((used)) static int FUNC4(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
	FUNC3 (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
			instrs[FUNC0(word1)]);

	if (FUNC0(word1) == V810_ADDI) {
		FUNC3 (cmd->operands, V810_INSTR_MAXLEN - 1, "%d, r%d, r%d",
				(st16) word2, FUNC1(word1), FUNC2(word1));
	} else {
		FUNC3 (cmd->operands, V810_INSTR_MAXLEN - 1, "0x%x, r%d, r%d",
				word2, FUNC1(word1), FUNC2(word1));
	}

	return 4;
}