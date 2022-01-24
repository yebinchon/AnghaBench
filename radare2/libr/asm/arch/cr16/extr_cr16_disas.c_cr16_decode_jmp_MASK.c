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
struct cr16_cmd {void* type; int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR16_INSTR_MAXLEN ; 
#define  CR16_JAL 129 
#define  CR16_JUMP 128 
 void* CR16_TYPE_JUMP_UNK ; 
 char** cr16_conds ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cr16_cmd*,size_t,size_t) ; 
 char** cr16_regs_names ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const ut8 *instr, struct cr16_cmd *cmd)
{
	ut16 c;
	int ret = 2;

	c = FUNC3 (instr);

	switch (c >> 9) {
	case CR16_JUMP:
		if (((c >> 5) & 0xf) == 0xE) {
			FUNC4(cmd->instr, CR16_INSTR_MAXLEN - 1, "jump");
		} else {
			FUNC4(cmd->instr, CR16_INSTR_MAXLEN - 1, "j%s",
				cr16_conds[FUNC0(c)]);
		}
		FUNC4(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s",
			cr16_regs_names[FUNC1(c)]);
		break;
	case CR16_JAL:
		if (!(c & 1)) {
			ret = -1;
			break;
		}
		FUNC4(cmd->instr, CR16_INSTR_MAXLEN - 1, "jal");
		FUNC2(cmd, FUNC0(c), FUNC1(c));
		cmd->type = CR16_TYPE_JUMP_UNK;
		break;
	case 0x0B:
		if (!(c & 1)) {
			FUNC5(cmd->instr, "jal", CR16_INSTR_MAXLEN - 1);
			FUNC4(cmd->operands, CR16_INSTR_MAXLEN - 1, "(%s,%s),(%s,%s)",
					cr16_regs_names[FUNC0(c) + 1],
					cr16_regs_names[FUNC0(c)],
					cr16_regs_names[FUNC1(c) + 1],
					cr16_regs_names[FUNC1(c)]);
		} else if (FUNC0(c) != 0xE) {
			FUNC4(cmd->instr, CR16_INSTR_MAXLEN - 1, "j%s",
					cr16_conds[FUNC0(c)]);
			FUNC4(cmd->operands, CR16_INSTR_MAXLEN - 1, "(%s,%s)",
					cr16_regs_names[FUNC1(c) + 1],
					cr16_regs_names[FUNC1(c)]);
		} else {
			FUNC5(cmd->instr, "jump", CR16_INSTR_MAXLEN - 1);
			FUNC4(cmd->operands, CR16_INSTR_MAXLEN - 1, "(%s,%s)",
					cr16_regs_names[FUNC1(c) + 1],
					cr16_regs_names[FUNC1(c)]);
		}
		break;
	default:
		return -1;
	}

	cmd->type = CR16_TYPE_JUMP_UNK;
	return ret;
}