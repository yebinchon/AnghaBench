#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  type; int /*<<< orphan*/  range; } ;
struct TYPE_16__ {scalar_t__ pi; struct TYPE_16__* next; TYPE_3__ constraint; scalar_t__ has_range_constraint; int /*<<< orphan*/  var; int /*<<< orphan*/ * sources; int /*<<< orphan*/  ssa_var; } ;
typedef  TYPE_4__ zend_ssa_phi ;
struct TYPE_17__ {TYPE_1__* blocks; } ;
typedef  TYPE_5__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_18__ {TYPE_2__* blocks; } ;
typedef  TYPE_6__ zend_cfg ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int predecessors_count; } ;
struct TYPE_13__ {TYPE_4__* phis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_5__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_5__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,TYPE_5__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const zend_cfg *cfg, const zend_op_array *op_array, const zend_ssa *ssa, int n, uint32_t dump_flags)
{
	FUNC1(cfg, n, dump_flags);
	if (ssa && ssa->blocks && ssa->blocks[n].phis) {
		zend_ssa_phi *p = ssa->blocks[n].phis;

		do {
			int j;

			FUNC0(stderr, "        ");
			FUNC3(op_array, ssa, p->ssa_var, 0, p->var, dump_flags);
			if (p->pi < 0) {
				FUNC0(stderr, " = Phi(");
				for (j = 0; j < cfg->blocks[n].predecessors_count; j++) {
					if (j > 0) {
						FUNC0(stderr, ", ");
					}
					FUNC3(op_array, ssa, p->sources[j], 0, p->var, dump_flags);
				}
				FUNC0(stderr, ")\n");
			} else {
				FUNC0(stderr, " = Pi<BB%ld>(", p->pi);
				FUNC3(op_array, ssa, p->sources[0], 0, p->var, dump_flags);
				FUNC0(stderr, " &");
				if (p->has_range_constraint) {
					FUNC2(op_array, ssa, &p->constraint.range, dump_flags);
				} else {
					FUNC4(op_array, ssa, &p->constraint.type, dump_flags);
				}
				FUNC0(stderr, ")\n");
			}
			p = p->next;
		} while (p);
	}
}