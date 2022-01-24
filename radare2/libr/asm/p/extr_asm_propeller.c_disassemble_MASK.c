#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct propeller_cmd {int /*<<< orphan*/  instr; scalar_t__* operands; scalar_t__* prefix; } ;
struct TYPE_4__ {int size; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  int /*<<< orphan*/  RAsm ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,struct propeller_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	const char *buf_asm;
	struct propeller_cmd cmd;
	int ret = FUNC0 (buf, &cmd);
	if (cmd.prefix[0] && cmd.operands[0]) {
		buf_asm = FUNC2 ("%s %s %s", cmd.prefix, cmd.instr, cmd.operands);
	} else if (cmd.operands[0]) {
		buf_asm = FUNC2 ("%s %s", cmd.instr, cmd.operands);
	} else {
		buf_asm = FUNC2 ("%s", cmd.instr);
	}
	FUNC1 (op, buf_asm);
	op->size = 4;
	return ret;
}