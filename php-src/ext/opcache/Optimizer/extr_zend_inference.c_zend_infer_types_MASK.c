#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef  TYPE_1__ zend_ssa_var_info ;
struct TYPE_15__ {int vars_count; TYPE_1__* var_info; } ;
typedef  TYPE_2__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_script ;
struct TYPE_16__ {int last_var; } ;
typedef  TYPE_3__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  zend_bitset ;
struct TYPE_13__ {int /*<<< orphan*/  return_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 scalar_t__ SUCCESS ; 
 TYPE_11__* FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  use_heap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__ const*,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const zend_op_array *op_array, const zend_script *script, zend_ssa *ssa, zend_long optimization_level)
{
	zend_ssa_var_info *ssa_var_info = ssa->var_info;
	int ssa_vars_count = ssa->vars_count;
	int j;
	zend_bitset worklist;
	FUNC0(use_heap);

	worklist = FUNC2(sizeof(zend_ulong) * FUNC6(ssa_vars_count), use_heap);
	FUNC4(worklist, 0, sizeof(zend_ulong) * FUNC6(ssa_vars_count));

	/* Type Inference */
	for (j = op_array->last_var; j < ssa_vars_count; j++) {
		FUNC5(worklist, j);
		ssa_var_info[j].type = 0;
	}

	if (FUNC8(op_array, script, ssa, worklist, optimization_level) != SUCCESS) {
		FUNC3(worklist,  use_heap);
		return FAILURE;
	}

	/* Narrowing integer initialization to doubles */
	FUNC9(op_array, script, ssa, optimization_level);

	if (FUNC1(op_array)) {
		FUNC7(op_array, script, 1, 0, &FUNC1(op_array)->return_info);
	}

	FUNC3(worklist,  use_heap);
	return SUCCESS;
}