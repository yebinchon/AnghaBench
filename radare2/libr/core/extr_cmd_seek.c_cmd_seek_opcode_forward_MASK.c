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
struct TYPE_4__ {int /*<<< orphan*/  blocksize; int /*<<< orphan*/  block; int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_OP_MASK_BASIC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3 (RCore *core, int n) {
	// N forward instructions
	int i, ret, val = 0;
	for (val = i = 0; i < n; i++) {
		RAnalOp op;
		ret = FUNC0 (core->anal, &op, core->offset, core->block,
			core->blocksize, R_ANAL_OP_MASK_BASIC);
		if (ret < 1) {
			ret = 1;
		}
		FUNC2 (core, ret);
		FUNC1 (&op);
		val += ret;
	}
	return val;
}