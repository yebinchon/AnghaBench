#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  void* ut64 ;
struct TYPE_13__ {scalar_t__ parent_stackptr; scalar_t__ addr; scalar_t__ jump; scalar_t__ stackptr; scalar_t__ fail; int /*<<< orphan*/ * parent_reg_arena; int /*<<< orphan*/  size; } ;
struct TYPE_12__ {TYPE_1__* anal; } ;
struct TYPE_11__ {scalar_t__ stackptr; int /*<<< orphan*/ * last_disasm_reg; int /*<<< orphan*/  reg; void* gp; } ;
typedef  TYPE_2__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;
typedef  TYPE_3__ RAnalBlock ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ UT64_MAX ; 
 char* FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC7(RCore *core, RAnalBlock *b, int opts, RAnalFunction *fcn, bool emu, ut64 saved_gp, ut8 *saved_arena) {
	if (emu) {
		core->anal->gp = saved_gp;
		if (b->parent_reg_arena) {
			FUNC5 (core->anal->reg, b->parent_reg_arena);
			FUNC0 (b->parent_reg_arena);
			ut64 gp = FUNC6 (core->anal->reg, "gp");
			if (gp) {
				core->anal->gp = gp;
			}
		} else {
			FUNC5 (core->anal->reg, saved_arena);
		}
	}
	if (b->parent_stackptr != INT_MAX) {
		core->anal->stackptr = b->parent_stackptr;
	}
	char *body = FUNC1 (core, b->addr, b->size, opts);
	if (b->jump != UT64_MAX) {
		if (b->jump > b->addr) {
			RAnalBlock *jumpbb = FUNC3 (fcn, b);
			if (jumpbb) {
				if (emu && core->anal->last_disasm_reg != NULL && !jumpbb->parent_reg_arena) {
					jumpbb->parent_reg_arena = FUNC4 (core->anal->reg, core->anal->last_disasm_reg);
				}
				if (jumpbb->parent_stackptr == INT_MAX) {
					jumpbb->parent_stackptr = core->anal->stackptr + b->stackptr;
				}
			}
		}
	}
	if (b->fail != UT64_MAX) {
		if (b->fail > b->addr) {
			RAnalBlock *failbb = FUNC2 (fcn, b);
			if (failbb) {
				if (emu && core->anal->last_disasm_reg != NULL && !failbb->parent_reg_arena) {
					failbb->parent_reg_arena = FUNC4 (core->anal->reg, core->anal->last_disasm_reg);
				}
				if (failbb->parent_stackptr == INT_MAX) {
					failbb->parent_stackptr = core->anal->stackptr + b->stackptr;
				}
			}
		}
	}
	return body;
}