#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_9__ {int type; scalar_t__ reg; } ;
struct TYPE_8__ {int operands_count; TYPE_7__* operands; } ;
typedef  int /*<<< orphan*/  RAsm ;
typedef  TYPE_1__ Opcode ;

/* Variables and functions */
 int OT_CONSTANT ; 
 int OT_GPREG ; 
 int OT_WORD ; 
 scalar_t__ X86R_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC5(RAsm *a, ut8 * data, const Opcode *op) {
	FUNC1 (op);
	if (op->operands_count < 2) {
		return -1;
	}
	if (op->operands[0].type == 0x80 && op->operands[0].reg == X86R_UNDEFINED) {
		return -1;
	}
	if (op->operands[1].type == 0x80 && op->operands[0].reg == X86R_UNDEFINED) {
		return -1;
	}
	if (op->operands[1].type & OT_CONSTANT) {
		if (op->operands[0].type & OT_GPREG &&
		    op->operands[0].type & OT_WORD) {
			return FUNC2 (a, data, op, 0x30);
		}
		if (!FUNC0 (&op->operands[0])) {
			return FUNC4 (a, data, op);
		}
	}
	return FUNC3 (a, data, op, 0x30);
}