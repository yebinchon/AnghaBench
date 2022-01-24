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
struct v810_cmd {char* instr; char* operands; } ;
struct TYPE_4__ {int size; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  int /*<<< orphan*/  RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,struct v810_cmd*) ; 

__attribute__((used)) static int FUNC3(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	struct v810_cmd cmd = {
		.instr = "",
		.operands = ""
	};
	if (len < 2) {
		return -1;
	}
	int ret = FUNC2 (buf, len, &cmd);
	if (ret > 0) {
		FUNC0 (op, FUNC1 ("%s %s", cmd.instr, cmd.operands));
	}
	return op->size = ret;
}