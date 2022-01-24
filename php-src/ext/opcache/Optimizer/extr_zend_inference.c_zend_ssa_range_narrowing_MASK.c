#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ overflow; int /*<<< orphan*/  max; int /*<<< orphan*/  min; scalar_t__ underflow; } ;
typedef  TYPE_1__ zend_ssa_range ;
struct TYPE_8__ {int /*<<< orphan*/ * var_info; } ;
typedef  TYPE_2__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_op_array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,TYPE_2__*,int,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(const zend_op_array *op_array, zend_ssa *ssa, int var, int scc)
{
	zend_ssa_range tmp;

	if (FUNC1(op_array, ssa, var, 0, 1, &tmp)) {
		if (FUNC2(&ssa->var_info[var], &tmp)) {
			FUNC0("  change range (narrowing SCC %2d) %2d [%s%ld..%ld%s]\n", scc, var, (tmp.underflow?"-- ":""), tmp.min, tmp.max, (tmp.overflow?" ++":""));
			return 1;
		}
	}
	return 0;
}