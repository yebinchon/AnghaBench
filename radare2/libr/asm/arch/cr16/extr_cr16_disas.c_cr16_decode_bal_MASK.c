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
typedef  int ut32 ;
typedef  int ut16 ;
struct cr16_cmd {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
#define  CR16_BAL 129 
 scalar_t__ CR16_INSTR_MAXLEN ; 
#define  CR16_TBIT_R_R 128 
 size_t FUNC0 (int) ; 
 char** cr16_regs_names ; 
 int FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

__attribute__((used)) static int FUNC4(const ut8 *instr, struct cr16_cmd *cmd)
{
	int ret = 4;
	ut16 c, disp16;
	ut32 disp32;

	c = FUNC2 (instr);
	disp16 = FUNC1 (instr, 2);

	FUNC3(cmd->instr, CR16_INSTR_MAXLEN - 1, "bal");

	switch (c >> 9) {
	case CR16_BAL:
		FUNC3(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,0x%x",
			cr16_regs_names[FUNC0(c)], disp16);
		break;
	case CR16_TBIT_R_R:
		disp32 = disp16 | (((c >> 1) & 0xF) << 16);
		FUNC3(cmd->operands, CR16_INSTR_MAXLEN - 1, "(%s,%s),0x%08x",
			cr16_regs_names[FUNC0(c) + 1],
			cr16_regs_names[FUNC0(c)], disp32);
		break;
	default:
		return -1;
	}

	return ret;
}