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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut16 ;
struct v850_cmd {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int /*<<< orphan*/  V850_INSTR_MAXLEN ; 
#define  V850_LDB 131 
#define  V850_LDHW 130 
#define  V850_STB 129 
#define  V850_STHW 128 
 size_t FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 char** instrs ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(const ut8 *instr, int len, struct v850_cmd *cmd) {
	if (len < 4) {
		return -1;
	}

	ut16 word1 = FUNC4 (instr);
	ut16 word2 = FUNC3 (instr, 2);

	switch (FUNC0 (word1)) {
	case V850_STB:
		FUNC5 (cmd->instr, V850_INSTR_MAXLEN - 1, "%s.b", instrs[FUNC0 (word1)]);
		FUNC5 (cmd->operands, V850_INSTR_MAXLEN - 1, "r%d, 0x%x[r%d]",
			       FUNC2 (word1), word2, FUNC1 (word1));
		break;
	case V850_LDB:
		FUNC5 (cmd->instr, V850_INSTR_MAXLEN - 1, "%s.b", instrs[FUNC0 (word1)]);
		FUNC5 (cmd->operands, V850_INSTR_MAXLEN - 1, "0x%x[r%d], r%d",
			       FUNC1 (word1), word2, FUNC2 (word1));
		break;
	case V850_LDHW:
		FUNC5 (cmd->instr, V850_INSTR_MAXLEN - 1, "%s.%c",
				instrs[FUNC0 (word1)], word2 & 1 ? 'w' : 'h');
		FUNC5 (cmd->operands, V850_INSTR_MAXLEN - 1, "0x%x[r%d], r%d",
				word2 & 0xFFFE, FUNC1 (word1), FUNC2 (word1));
		break;
	case V850_STHW:
		FUNC5 (cmd->instr, V850_INSTR_MAXLEN - 1, "%s.%c",
				instrs[FUNC0 (word1)], word2 & 1 ? 'w' : 'h');
		FUNC5 (cmd->operands, V850_INSTR_MAXLEN - 1, "r%d, 0x%x[r%d]",
			       FUNC2 (word1), word2 & 0xFFFE, FUNC1 (word1));
		break;
	}

	return 4;
}