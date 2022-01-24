#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_10__ {int last_var; int T; int last; int /*<<< orphan*/ ** vars; TYPE_5__* opcodes; } ;
typedef  TYPE_4__ zend_op_array ;
struct TYPE_9__ {void* var; } ;
struct TYPE_8__ {void* var; } ;
struct TYPE_7__ {void* var; } ;
struct TYPE_11__ {int op1_type; int op2_type; int result_type; scalar_t__ opcode; int extended_value; TYPE_3__ result; TYPE_2__ op2; TYPE_1__ op1; } ;
typedef  TYPE_5__ zend_op ;
typedef  int* zend_bitset ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IS_CV ; 
 int IS_TMP_VAR ; 
 int IS_VAR ; 
 void* FUNC1 (int) ; 
 size_t FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_ROPE_INIT ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_heap1 ; 
 int /*<<< orphan*/  use_heap2 ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 scalar_t__ FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,size_t) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC14(zend_op_array *op_array) {
	int i;

	FUNC0(use_heap1);
	FUNC0(use_heap2);
	uint32_t used_vars_len = FUNC12(op_array->last_var + op_array->T);
	zend_bitset used_vars = FUNC4(used_vars_len, use_heap1);
	uint32_t *vars_map = FUNC5((op_array->last_var + op_array->T) * sizeof(uint32_t), use_heap2);
	uint32_t num_cvs, num_tmps;

	/* Determine which CVs are used */
	FUNC9(used_vars, used_vars_len);
	for (i = 0; i < op_array->last; i++) {
		zend_op *opline = &op_array->opcodes[i];
		if (opline->op1_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			FUNC11(used_vars, FUNC2(opline->op1.var));
		}
		if (opline->op2_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			FUNC11(used_vars, FUNC2(opline->op2.var));
		}
		if (opline->result_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			FUNC11(used_vars, FUNC2(opline->result.var));
			if (opline->opcode == ZEND_ROPE_INIT) {
				uint32_t num = ((opline->extended_value * sizeof(zend_string*)) + (sizeof(zval) - 1)) / sizeof(zval);
				while (num > 1) {
					num--;
					FUNC11(used_vars, FUNC2(opline->result.var) + num);
				}
			}
		}
	}

	num_cvs = 0;
	for (i = 0; i < op_array->last_var; i++) {
		if (FUNC10(used_vars, i)) {
			vars_map[i] = num_cvs++;
		} else {
			vars_map[i] = (uint32_t) -1;
		}
	}

	num_tmps = 0;
	for (i = op_array->last_var; i < op_array->last_var + op_array->T; i++) {
		if (FUNC10(used_vars, i)) {
			vars_map[i] = num_cvs + num_tmps++;
		} else {
			vars_map[i] = (uint32_t) -1;
		}
	}

	FUNC7(used_vars, use_heap1);
	if (num_cvs == op_array->last_var && num_tmps == op_array->T) {
		FUNC7(vars_map, use_heap2);
		return;
	}

	FUNC3(num_cvs <= op_array->last_var);
	FUNC3(num_tmps <= op_array->T);

	/* Update CV and TMP references in opcodes */
	for (i = 0; i < op_array->last; i++) {
		zend_op *opline = &op_array->opcodes[i];
		if (opline->op1_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			opline->op1.var = FUNC1(vars_map[FUNC2(opline->op1.var)]);
		}
		if (opline->op2_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			opline->op2.var = FUNC1(vars_map[FUNC2(opline->op2.var)]);
		}
		if (opline->result_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
			opline->result.var = FUNC1(vars_map[FUNC2(opline->result.var)]);
		}
	}

	/* Update CV name table */
	if (num_cvs != op_array->last_var) {
		if (num_cvs) {
			zend_string **names = FUNC8(sizeof(zend_string *), num_cvs, 0);
			for (i = 0; i < op_array->last_var; i++) {
				if (vars_map[i] != (uint32_t) -1) {
					names[vars_map[i]] = op_array->vars[i];
				} else {
					FUNC13(op_array->vars[i], 0);
				}
			}
			FUNC6(op_array->vars);
			op_array->vars = names;
		} else {
			for (i = 0; i < op_array->last_var; i++) {
				FUNC13(op_array->vars[i], 0);
			}
			FUNC6(op_array->vars);
			op_array->vars = NULL;
		}
		op_array->last_var = num_cvs;
	}

	op_array->T = num_tmps;

	FUNC7(vars_map, use_heap2);
}