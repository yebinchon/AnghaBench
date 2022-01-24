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
struct TYPE_3__ {int printidx; int inc; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  block; int /*<<< orphan*/  assembler; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAsmOp ;

/* Variables and functions */
 int NPF ; 
 int FUNC0 (int) ; 
#define  R_CORE_VISUAL_MODE_DB 130 
#define  R_CORE_VISUAL_MODE_PD 129 
#define  R_CORE_VISUAL_MODE_PX 128 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(RCore *core, int n) {
	RAsmOp op;

	if (n > 0) {
		core->printidx = FUNC0 ((core->printidx + 1) % NPF);
	} else {
		if (core->printidx) {
			core->printidx--;
		} else {
			core->printidx = NPF - 1;
		}
	}
	switch (core->printidx) {
	case R_CORE_VISUAL_MODE_PX:
		core->inc = 16;
		break;
	case R_CORE_VISUAL_MODE_PD:
	case R_CORE_VISUAL_MODE_DB:
		FUNC4 (&op);
		core->inc = FUNC2 (core->assembler, &op, core->block, FUNC1 (32, core->blocksize));
		FUNC3 (&op);
		break;
	}
}