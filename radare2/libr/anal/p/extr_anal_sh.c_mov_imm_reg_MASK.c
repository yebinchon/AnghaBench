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
typedef  int /*<<< orphan*/  st8 ;
struct TYPE_3__ {int size; int /*<<< orphan*/  esil; int /*<<< orphan*/ * src; int /*<<< orphan*/  dst; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_MOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAnal* anal, RAnalOp* op, ut16 code) {
	op->type = R_ANAL_OP_TYPE_MOV;
	op->dst = FUNC1 (anal, FUNC0 (code));
	op->src[0] = FUNC2 (anal, (st8)(code & 0xFF));
	FUNC3 (&op->esil, "0x%x,r%d,=,r%d,0x80,&,?{,0xFFFFFF00,r%d,|=,}", code & 0xFF, FUNC0 (code), FUNC0 (code), FUNC0 (code));
	return op->size;
}