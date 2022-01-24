#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ssa_var; struct TYPE_11__* next; } ;
typedef  TYPE_3__ zend_ssa_phi ;
struct TYPE_12__ {TYPE_3__* phis; } ;
typedef  TYPE_4__ zend_ssa_block ;
typedef  int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* visit_phi ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_13__ {TYPE_2__ handlers; int /*<<< orphan*/  phi_var_worklist; TYPE_1__* ssa; int /*<<< orphan*/  block_worklist; int /*<<< orphan*/  executable_blocks; int /*<<< orphan*/  feasible_edges; } ;
typedef  TYPE_5__ scdf_ctx ;
struct TYPE_9__ {TYPE_4__* blocks; int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(scdf_ctx *scdf, int from, int to) {
	uint32_t edge = FUNC1(&scdf->ssa->cfg, from, to);

	if (FUNC4(scdf->feasible_edges, edge)) {
		/* We already handled this edge */
		return;
	}

	FUNC0("Marking edge %d->%d feasible\n", from, to);
	FUNC5(scdf->feasible_edges, edge);

	if (!FUNC4(scdf->executable_blocks, to)) {
		if (!FUNC4(scdf->block_worklist, to)) {
			FUNC0("Adding block %d to worklist\n", to);
		}
		FUNC5(scdf->block_worklist, to);
	} else {
		/* Block is already executable, only a new edge became feasible.
		 * Reevaluate phi nodes to account for changed source operands. */
		zend_ssa_block *ssa_block = &scdf->ssa->blocks[to];
		zend_ssa_phi *phi;
		for (phi = ssa_block->phis; phi; phi = phi->next) {
			FUNC3(scdf->phi_var_worklist, phi->ssa_var);
			scdf->handlers.visit_phi(scdf, phi);
		}
	}
}