#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  bbs; } ;
struct TYPE_6__ {int anal_ret_val; TYPE_2__* current_fcn; } ;
typedef  TYPE_1__ RAnalState ;
typedef  TYPE_2__ RAnalFunction ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAnal *anal, RAnalFunction *fcn, RAnalState *state) {
	// deallocate niceties
	FUNC3 (fcn->bbs);
	fcn->bbs = FUNC1 ();
	FUNC0 (fcn->addr);
	state->current_fcn = fcn;
	// Not a resource leak.  Basic blocks should be stored in the state->fcn
	// TODO: ? RList *bbs =
	FUNC2 (anal, state, fcn->addr);
	return state->anal_ret_val;
}