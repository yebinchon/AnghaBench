#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int is_instanceof; int type; int /*<<< orphan*/ * ce; } ;
typedef  TYPE_3__ zend_ssa_var_info ;
struct TYPE_15__ {int definition; TYPE_6__* definition_phi; } ;
typedef  TYPE_4__ zend_ssa_var ;
struct TYPE_16__ {int type_mask; int /*<<< orphan*/ * ce; } ;
typedef  TYPE_5__ zend_ssa_type_constraint ;
struct TYPE_13__ {TYPE_5__ type; } ;
struct TYPE_17__ {scalar_t__ pi; size_t* sources; size_t block; TYPE_2__ constraint; int /*<<< orphan*/  has_range_constraint; } ;
typedef  TYPE_6__ zend_ssa_phi ;
struct TYPE_12__ {TYPE_8__* blocks; } ;
struct TYPE_18__ {int vars_count; TYPE_3__* var_info; TYPE_4__* vars; TYPE_1__ cfg; } ;
typedef  TYPE_7__ zend_ssa ;
typedef  int /*<<< orphan*/  zend_script ;
typedef  int /*<<< orphan*/  zend_op_array ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  zend_bitset ;
struct TYPE_19__ {int predecessors_count; } ;
typedef  TYPE_8__ zend_basic_block ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int MAY_BE_ARRAY ; 
 int MAY_BE_OBJECT ; 
 int MAY_BE_RC1 ; 
 int MAY_BE_RCN ; 
 int MAY_BE_RESOURCE ; 
 int MAY_BE_STRING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_7__*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC11(const zend_op_array *op_array, const zend_script *script, zend_ssa *ssa, zend_bitset worklist, zend_long optimization_level)
{
	zend_basic_block *blocks = ssa->cfg.blocks;
	zend_ssa_var *ssa_vars = ssa->vars;
	zend_ssa_var_info *ssa_var_info = ssa->var_info;
	int ssa_vars_count = ssa->vars_count;
	int i, j;
	uint32_t tmp, worklist_len = FUNC9(ssa_vars_count);

	while (!FUNC6(worklist, worklist_len)) {
		j = FUNC8(worklist, worklist_len);
		FUNC7(worklist, j);
		if (ssa_vars[j].definition_phi) {
			zend_ssa_phi *p = ssa_vars[j].definition_phi;
			if (p->pi >= 0) {
				zend_class_entry *ce = ssa_var_info[p->sources[0]].ce;
				int is_instanceof = ssa_var_info[p->sources[0]].is_instanceof;
				tmp = FUNC3(ssa, p->sources[0]);

				if (!p->has_range_constraint) {
					zend_ssa_type_constraint *constraint = &p->constraint.type;
					tmp &= constraint->type_mask;
					if (!(tmp & (MAY_BE_STRING|MAY_BE_ARRAY|MAY_BE_OBJECT|MAY_BE_RESOURCE))) {
						tmp &= ~(MAY_BE_RC1|MAY_BE_RCN);
					}
					if ((tmp & MAY_BE_OBJECT) && constraint->ce && ce != constraint->ce) {
						if (!ce) {
							ce = constraint->ce;
							is_instanceof = 1;
						} else if (is_instanceof && FUNC4(constraint->ce, ce)) {
							ce = constraint->ce;
						} else {
							/* Ignore the constraint (either ce instanceof constraint->ce or
							 * they are unrelated, as far as we can statically determine) */
						}
					}
				}

				FUNC1(tmp, j);
				FUNC0(ce, is_instanceof, j);
			} else {
				int first = 1;
				int is_instanceof = 0;
				zend_class_entry *ce = NULL;

				tmp = 0;
				for (i = 0; i < blocks[p->block].predecessors_count; i++) {
					tmp |= FUNC3(ssa, p->sources[i]);
				}
				FUNC1(tmp, j);
				for (i = 0; i < blocks[p->block].predecessors_count; i++) {
					zend_ssa_var_info *info;

					FUNC2(p->sources[i] >= 0);
					info = &ssa_var_info[p->sources[i]];
					if (info->type & MAY_BE_OBJECT) {
						if (first) {
							ce = info->ce;
							is_instanceof = info->is_instanceof;
							first = 0;
						} else {
							is_instanceof |= info->is_instanceof;
							ce = FUNC5(ce, info->ce, &is_instanceof);
						}
					}
				}
				FUNC0(ce, ce ? is_instanceof : 0, j);
			}
		} else if (ssa_vars[j].definition >= 0) {
			i = ssa_vars[j].definition;
			if (FUNC10(op_array, ssa, script, worklist, i, optimization_level) == FAILURE) {
				return FAILURE;
			}
		}
	}
	return SUCCESS;
}