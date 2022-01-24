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
typedef  int /*<<< orphan*/  ut16 ;
struct v810_cmd {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 size_t FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ V810_INSTR_MAXLEN ; 
 char** instrs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

__attribute__((used)) static int FUNC3(const ut16 word1, const ut16 word2, struct v810_cmd *cmd) {
	FUNC2 (cmd->instr, V810_INSTR_MAXLEN - 1, "%s",
			instrs[FUNC1(word1)]);
	FUNC2 (cmd->operands, V810_INSTR_MAXLEN - 1, "%d",
			FUNC0(word1, word2));

	return 4;
}