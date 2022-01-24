#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ut16 ;
struct TYPE_5__ {int memref; scalar_t__ base; } ;
struct TYPE_4__ {int size; TYPE_2__** src; int /*<<< orphan*/  esil; scalar_t__ addr; int /*<<< orphan*/  dst; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAnal* anal, RAnalOp* op, ut16 code) {
	op->type = R_ANAL_OP_TYPE_LOAD;
	op->dst = FUNC1 (anal, FUNC0 (code));
	op->src[0] = FUNC2 ();
	op->src[0]->base = (code & 0xFF) * 2+op->addr + 4;
	op->src[0]->memref=1;
	FUNC3 (&op->esil, "0x%x,[2],r%d,=,r%d,0x8000,&,?{,0xFFFF0000,r%d,|=,}", op->src[0]->base, FUNC0 (code), FUNC0 (code), FUNC0 (code));
	return op->size;
}