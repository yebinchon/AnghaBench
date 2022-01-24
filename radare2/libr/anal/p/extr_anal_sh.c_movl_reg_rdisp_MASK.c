#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut16 ;
struct TYPE_3__ {int size; int /*<<< orphan*/  esil; int /*<<< orphan*/  dst; int /*<<< orphan*/ * src; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LONG_SIZE ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_STORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(RAnal* anal, RAnalOp* op, ut16 code) {
	op->type = R_ANAL_OP_TYPE_STORE;
	op->src[0] = FUNC2 (anal, FUNC0 (code));
	op->dst = FUNC3 (anal, FUNC1 (code), code & 0x0F, LONG_SIZE);
	FUNC4 (&op->esil, "r%d,r%d,0x%x,+,=[4]", FUNC0 (code), FUNC1 (code), (code & 0xF) << 2);
	return op->size;
}