#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int size; int jump; int fail; int ptr; int val; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  RAnalOpMask ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;
typedef  TYPE_2__ HexInsn ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
	HexInsn hi = {0};;
	ut32 data = 0;
	FUNC2 (op, 0, sizeof (RAnalOp));
	data = FUNC3 (buf);
	int size = FUNC1 (data, &hi, (ut32) addr);
	op->size = size;
	if (size <= 0) {
		return size;
	}

	op->addr = addr;
	op->jump = op->fail = -1;
	op->ptr = op->val = -1;
	return FUNC0 (&hi, op);
}