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
 scalar_t__ V850_INSTR_MAXLEN ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 char** instrs ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

__attribute__((used)) static int FUNC6(const ut8 *instr, int len, struct v850_cmd *cmd) {
	if (len < 4) {
		return -1;
	}
	ut16 word1 = FUNC4 (instr);
	ut16 word2 = FUNC3 (instr, 2);
	FUNC5 (cmd->instr, V850_INSTR_MAXLEN - 1, "%s", instrs[FUNC0 (word1)]);
	FUNC5 (cmd->operands, V850_INSTR_MAXLEN - 1, "0x%x, r%d, r%d",
			word2, FUNC1 (word1), FUNC2 (word1));
	return 4;
}