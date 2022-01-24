#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct msp430_cmd {int /*<<< orphan*/  instr; scalar_t__* operands; } ;
struct TYPE_6__ {scalar_t__ syntax; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 scalar_t__ R_ASM_SYNTAX_ATT ; 
 int FUNC0 (int /*<<< orphan*/  const*,int,struct msp430_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC5(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	struct msp430_cmd cmd;
	int ret = FUNC0 (buf, len, &cmd);
	if (ret > 0) {
		if (cmd.operands[0]) {
			FUNC3 (&op->buf_asm, FUNC4 ("%s %s", cmd.instr, cmd.operands));
		} else {
			FUNC3 (&op->buf_asm, FUNC4 ("%s", cmd.instr));
		}
	}
	if (a->syntax != R_ASM_SYNTAX_ATT) {
		char *ba = (char *)FUNC2 (&op->buf_asm);
		FUNC1 (ba, '#', 0, 1);
		// r_str_replace_ch (ba, "$", "$$", 1);
		FUNC1 (ba, '&', 0, 1);
		FUNC1 (ba, '%', 0, 1);
	}

	return op->size = ret;
}