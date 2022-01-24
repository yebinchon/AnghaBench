#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* jmp_addr; TYPE_1__* zv; } ;
struct TYPE_21__ {scalar_t__ op1_type; scalar_t__ op2_type; int opcode; int extended_value; int /*<<< orphan*/  type; struct TYPE_21__* name; TYPE_14__ op2; TYPE_14__ op1; } ;
typedef  TYPE_1__ zval ;
typedef  TYPE_1__ zend_string ;
typedef  int /*<<< orphan*/  zend_persistent_script ;
struct TYPE_22__ {int last_literal; int last; int num_args; int fn_flags; int last_var; int /*<<< orphan*/  run_time_cache; TYPE_1__* static_variables; int /*<<< orphan*/  static_variables_ptr; TYPE_1__* prototype; TYPE_1__* try_catch_array; TYPE_1__* doc_comment; TYPE_1__* scope; TYPE_1__* live_range; TYPE_1__* filename; TYPE_1__* function_name; TYPE_1__** vars; TYPE_1__* arg_info; TYPE_1__* opcodes; TYPE_1__* literals; int /*<<< orphan*/ * refcount; } ;
typedef  TYPE_3__ zend_op_array ;
typedef  TYPE_1__ zend_op ;
typedef  TYPE_1__ zend_arg_info ;
typedef  TYPE_1__ HashTable ;

/* Variables and functions */
 scalar_t__ IS_CONST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int ZEND_ACC_HAS_RETURN_TYPE ; 
 int ZEND_ACC_IMMUTABLE ; 
 int ZEND_ACC_VARIADIC ; 
#define  ZEND_ASSERT_CHECK 144 
#define  ZEND_CATCH 143 
#define  ZEND_COALESCE 142 
#define  ZEND_FAST_CALL 141 
#define  ZEND_FE_FETCH_R 140 
#define  ZEND_FE_FETCH_RW 139 
#define  ZEND_FE_RESET_R 138 
#define  ZEND_FE_RESET_RW 137 
#define  ZEND_JMP 136 
#define  ZEND_JMPNZ 135 
#define  ZEND_JMPNZ_EX 134 
#define  ZEND_JMPZ 133 
#define  ZEND_JMPZNZ 132 
#define  ZEND_JMPZ_EX 131 
#define  ZEND_JMP_SET 130 
 int ZEND_LAST_CATCH ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*,TYPE_14__) ; 
#define  ZEND_SWITCH_LONG 129 
#define  ZEND_SWITCH_STRING 128 
 int /*<<< orphan*/  ZVAL_PTR_DTOR ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC11(zend_op_array           *op_array,
                                                 zend_persistent_script  *script,
                                                 void                    *buf)
{
	if (op_array->static_variables && !FUNC0(op_array->static_variables)) {
		HashTable *ht;

		FUNC1(op_array->static_variables);
		ht = op_array->static_variables;
		FUNC8(ht,
				script, buf, zend_file_cache_unserialize_zval, ZVAL_PTR_DTOR);
	}

	if (op_array->refcount) {
		op_array->refcount = NULL;
		FUNC1(op_array->literals);
		FUNC1(op_array->opcodes);
		FUNC1(op_array->arg_info);
		FUNC1(*op_array->vars);
		FUNC2(op_array->function_name);
		FUNC2(op_array->filename);
		FUNC1(op_array->live_range);
		FUNC1(op_array->scope);
		FUNC2(op_array->doc_comment);
		FUNC1(op_array->try_catch_array);
		FUNC1(op_array->prototype);
		return;
	}

	if (op_array->literals && !FUNC0(op_array->literals)) {
		zval *p, *end;

		FUNC1(op_array->literals);
		p = op_array->literals;
		end = p + op_array->last_literal;
		while (p < end) {
			FUNC10(p, script, buf);
			p++;
		}
	}

	if (!FUNC0(op_array->opcodes)) {
		zend_op *opline, *end;

		FUNC1(op_array->opcodes);
		opline = op_array->opcodes;
		end = opline + op_array->last;
		while (opline < end) {
#if ZEND_USE_ABS_CONST_ADDR
			if (opline->op1_type == IS_CONST) {
				UNSERIALIZE_PTR(opline->op1.zv);
			}
			if (opline->op2_type == IS_CONST) {
				UNSERIALIZE_PTR(opline->op2.zv);
			}
#else
			if (opline->op1_type == IS_CONST) {
				FUNC6(op_array, opline, opline->op1);
			}
			if (opline->op2_type == IS_CONST) {
				FUNC6(op_array, opline, opline->op2);
			}
#endif
#if ZEND_USE_ABS_JMP_ADDR
			switch (opline->opcode) {
				case ZEND_JMP:
				case ZEND_FAST_CALL:
					UNSERIALIZE_PTR(opline->op1.jmp_addr);
					break;
				case ZEND_JMPZNZ:
					/* relative extended_value don't have to be changed */
					/* break omitted intentionally */
				case ZEND_JMPZ:
				case ZEND_JMPNZ:
				case ZEND_JMPZ_EX:
				case ZEND_JMPNZ_EX:
				case ZEND_JMP_SET:
				case ZEND_COALESCE:
				case ZEND_FE_RESET_R:
				case ZEND_FE_RESET_RW:
				case ZEND_ASSERT_CHECK:
					UNSERIALIZE_PTR(opline->op2.jmp_addr);
					break;
				case ZEND_CATCH:
					if (!(opline->extended_value & ZEND_LAST_CATCH)) {
						UNSERIALIZE_PTR(opline->op2.jmp_addr);
					}
					break;
				case ZEND_FE_FETCH_R:
				case ZEND_FE_FETCH_RW:
				case ZEND_SWITCH_LONG:
				case ZEND_SWITCH_STRING:
					/* relative extended_value don't have to be changed */
					break;
			}
#endif
			FUNC7(opline);
			opline++;
		}

		if (op_array->arg_info) {
			zend_arg_info *p, *end;
			FUNC1(op_array->arg_info);
			p = op_array->arg_info;
			end = p + op_array->num_args;
			if (op_array->fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
				p--;
			}
			if (op_array->fn_flags & ZEND_ACC_VARIADIC) {
				end++;
			}
			while (p < end) {
				if (!FUNC0(p->name)) {
					FUNC2(p->name);
				}
				FUNC9(&p->type, script, buf);
				p++;
			}
		}

		if (op_array->vars) {
			zend_string **p, **end;

			FUNC1(*op_array->vars);
			p = op_array->vars;
			end = p + op_array->last_var;
			while (p < end) {
				if (!FUNC0(*p)) {
					FUNC2(*p);
				}
				p++;
			}
		}

		FUNC2(op_array->function_name);
		FUNC2(op_array->filename);
		FUNC1(op_array->live_range);
		FUNC1(op_array->scope);
		FUNC2(op_array->doc_comment);
		FUNC1(op_array->try_catch_array);
		FUNC1(op_array->prototype);

		if (op_array->fn_flags & ZEND_ACC_IMMUTABLE) {
			if (op_array->static_variables) {
				FUNC5(op_array->static_variables_ptr);
			} else {
				FUNC4(op_array->static_variables_ptr, &op_array->static_variables);
			}
			FUNC5(op_array->run_time_cache);
		} else {
			FUNC4(op_array->static_variables_ptr, &op_array->static_variables);
			FUNC1(FUNC3(op_array->run_time_cache));
		}
	}
}