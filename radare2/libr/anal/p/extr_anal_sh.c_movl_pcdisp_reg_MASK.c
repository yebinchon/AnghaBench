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
typedef  int ut16 ;
struct TYPE_4__ {int addr; int size; int /*<<< orphan*/  esil; int /*<<< orphan*/  dst; int /*<<< orphan*/ * src; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LONG_SIZE ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAnal* anal, RAnalOp* op, ut16 code) {
	op->type = R_ANAL_OP_TYPE_LOAD;
	op->src[0] = FUNC2 (anal, op, code & 0xFF, LONG_SIZE);
	//TODO: check it
	op->dst = FUNC1 (anal, FUNC0 (code));
	//r_strbuf_setf (&op->esil, "0x%x,[4],r%d,=", (code & 0xFF) * 4 + (op->addr & 0xfffffff3) + 4, GET_TARGET_REG (code));
	FUNC3 (&op->esil, "0x%x,[4],r%d,=", (code & 0xFF) * 4 + ((op->addr >> 2)<<2) + 4, FUNC0 (code));
	return op->size;
}