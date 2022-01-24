#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {TYPE_6__* operands; } ;
typedef  int /*<<< orphan*/  RAsm ;
typedef  TYPE_1__ Opcode ;

/* Variables and functions */
 int OT_CONSTANT ; 
 int OT_GPREG ; 
 int OT_WORD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(RAsm *a, ut8 *data, const Opcode *op) {
	if (op->operands[1].type & OT_CONSTANT) {
		if (op->operands[0].type & OT_GPREG &&
		    op->operands[0].type & OT_WORD) {
			return FUNC1 (a, data, op, 0x20);
		}
		if (!FUNC0 (&op->operands[0])) {
			return FUNC3 (a, data, op);
		}
	}
	return FUNC2 (a, data, op, 0x20);
}