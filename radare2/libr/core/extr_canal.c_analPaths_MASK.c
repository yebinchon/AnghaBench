#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_15__ {scalar_t__ addr; scalar_t__ jump; scalar_t__ fail; int op_pos_size; scalar_t__* op_pos; } ;
struct TYPE_14__ {scalar_t__ type; scalar_t__ jump; } ;
struct TYPE_13__ {scalar_t__ followDepth; int /*<<< orphan*/  visited; int /*<<< orphan*/  path; TYPE_4__* cur; int /*<<< orphan*/  core; scalar_t__ followCalls; TYPE_1__* toBB; } ;
struct TYPE_12__ {scalar_t__ addr; } ;
typedef  TYPE_2__ RCoreAnalPaths ;
typedef  TYPE_3__ RAnalOp ;
typedef  TYPE_4__ RAnalBlock ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_OP_MASK_BASIC ; 
 scalar_t__ R_ANAL_OP_TYPE_CALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 () ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(RCoreAnalPaths *p, PJ *pj) {
	RAnalBlock *cur = p->cur;
	if (!cur) {
		// eprintf ("eof\n");
		return;
	}
	/* handle ^C */
	if (FUNC5 ()) {
		return;
	}
	FUNC2 (&p->visited, cur->addr, 1, NULL);
	FUNC7 (p->path, cur);
	if (p->followDepth && --p->followDepth == 0) {
		return;
	}
	if (p->toBB && cur->addr == p->toBB->addr) {
		if (!FUNC3 (p, pj)) {
			return;
		}
	} else {
		RAnalBlock *c = cur;
		ut64 j = cur->jump;
		ut64 f = cur->fail;
		FUNC0 (p, j, pj);
		cur = c;
		FUNC0 (p, f, pj);
		if (p->followCalls) {
			int i;
			for (i = 0; i < cur->op_pos_size; i++) {
				ut64 addr = cur->addr + cur->op_pos[i];
				RAnalOp *op = FUNC6 (p->core, addr, R_ANAL_OP_MASK_BASIC);
				if (op && op->type == R_ANAL_OP_TYPE_CALL) {
					FUNC0 (p, op->jump, pj);
				}
				cur = c;
				FUNC4 (op);
			}
		}
	}
	p->cur = FUNC8 (p->path);
	FUNC1 (&p->visited, cur->addr);
	if (p->followDepth) {
		p->followDepth++;
	}
}