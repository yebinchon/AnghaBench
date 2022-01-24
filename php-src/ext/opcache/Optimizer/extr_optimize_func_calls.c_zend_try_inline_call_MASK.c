#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_16__ {int /*<<< orphan*/  constant; } ;
struct TYPE_14__ {size_t extended_value; scalar_t__ opcode; scalar_t__ op1_type; TYPE_7__ op2; TYPE_7__ op1; } ;
typedef  TYPE_1__ zend_op ;
struct TYPE_13__ {int fn_flags; size_t required_num_args; size_t num_args; TYPE_1__* opcodes; int /*<<< orphan*/ * arg_info; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_10__ op_array; } ;
typedef  TYPE_2__ zend_function ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,TYPE_1__*,TYPE_7__) ; 
 scalar_t__ IS_CONST ; 
 scalar_t__ IS_CONSTANT_AST ; 
 scalar_t__ IS_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__) ; 
 int ZEND_ACC_ABSTRACT ; 
 int ZEND_ACC_HAS_TYPE_HINTS ; 
 int ZEND_ACC_TRAIT_CLONE ; 
 int ZEND_ACC_VARIADIC ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ZEND_INIT_METHOD_CALL ; 
 scalar_t__ ZEND_QM_ASSIGN ; 
 scalar_t__ ZEND_RETURN ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(zend_op_array *op_array, zend_op *fcall, zend_op *opline, zend_function *func)
{
	if (func->type == ZEND_USER_FUNCTION
	 && !(func->op_array.fn_flags & (ZEND_ACC_ABSTRACT|ZEND_ACC_HAS_TYPE_HINTS))
		/* TODO: function copied from trait may be inconsistent ??? */
	 && !(func->op_array.fn_flags & (ZEND_ACC_TRAIT_CLONE))
	 && fcall->extended_value >= func->op_array.required_num_args
	 && func->op_array.opcodes[func->op_array.num_args].opcode == ZEND_RETURN) {

		zend_op *ret_opline = func->op_array.opcodes + func->op_array.num_args;

		if (ret_opline->op1_type == IS_CONST) {
			uint32_t i, num_args = func->op_array.num_args;
			num_args += (func->op_array.fn_flags & ZEND_ACC_VARIADIC) != 0;

			if (fcall->opcode == ZEND_INIT_METHOD_CALL && fcall->op1_type == IS_UNUSED) {
				/* TODO: we can't inlne methods, because $this may be used
				 *       not in object context ???
				 */
				return;
			}

			for (i = 0; i < num_args; i++) {
				/* Don't inline functions with by-reference arguments. This would require
				 * correct handling of INDIRECT arguments. */
				if (FUNC4(&func->op_array.arg_info[i])) {
					return;
				}
			}

			if (fcall->extended_value < func->op_array.num_args) {
				/* don't inline functions with named constants in default arguments */
				i = fcall->extended_value;

				do {
					if (FUNC6(FUNC0(&func->op_array, &func->op_array.opcodes[i], func->op_array.opcodes[i].op2)) == IS_CONSTANT_AST) {
						return;
					}
					i++;
				} while (i < func->op_array.num_args);
			}

			if (FUNC2(opline)) {
				zval zv;

				FUNC5(&zv, FUNC0(&func->op_array, ret_opline, ret_opline->op1));
				opline->opcode = ZEND_QM_ASSIGN;
				opline->op1_type = IS_CONST;
				opline->op1.constant = FUNC8(op_array, &zv);
				FUNC3(opline->op2);
			} else {
				FUNC1(opline);
			}

			FUNC7(opline-1);
		}
	}
}