#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vars_count; TYPE_1__* vars; } ;
typedef  TYPE_2__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_op_array ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ scc; scalar_t__ scc_entry; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_CV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_2__ const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(const zend_op_array *op_array, const zend_ssa *ssa, uint32_t dump_flags)
{
	int j;

	if (ssa->vars) {
		FUNC0(stderr, "\nSSA Variable for \"");
		FUNC1(op_array);
		FUNC0(stderr, "\"\n");

		for (j = 0; j < ssa->vars_count; j++) {
			FUNC0(stderr, "    ");
			FUNC2(op_array, ssa, j, IS_CV, ssa->vars[j].var, dump_flags);
			if (ssa->vars[j].scc >= 0) {
				if (ssa->vars[j].scc_entry) {
					FUNC0(stderr, " *");
				}  else {
					FUNC0(stderr, "  ");
				}
				FUNC0(stderr, "SCC=%ld", ssa->vars[j].scc);
			}
			FUNC0(stderr, "\n");
		}
	}
}