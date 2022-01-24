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
typedef  int /*<<< orphan*/  ut16 ;
struct TYPE_4__ {int delay; int eob; int size; int /*<<< orphan*/  jump; int /*<<< orphan*/  esil; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_JMP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(RAnal* anal, RAnalOp* op, ut16 code) {
	/* Unconditional branch, relative to PC */
	op->type = R_ANAL_OP_TYPE_JMP;
	op->delay = 1;
	op->jump = FUNC1 (op, FUNC0 (code));
	op->eob = true;
	FUNC2 (&op->esil, "1,SETD,0x%x,pc,=", op->jump);
	return op->size;
}