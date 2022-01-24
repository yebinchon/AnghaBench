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
typedef  int /*<<< orphan*/  znode ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_11__ {int fn_flags; int /*<<< orphan*/ * function_name; } ;
typedef  TYPE_1__ zend_op_array ;
struct TYPE_12__ {int /*<<< orphan*/  op1; void* op1_type; int /*<<< orphan*/  opcode; int /*<<< orphan*/  extended_value; } ;
typedef  TYPE_2__ zend_op ;
typedef  scalar_t__ zend_bool ;
struct TYPE_13__ {int /*<<< orphan*/  lex_pos; int /*<<< orphan*/ * name; } ;
typedef  TYPE_3__ zend_ast_decl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* IS_CONST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_CLOSURE ; 
 int /*<<< orphan*/  ZEND_DECLARE_FUNCTION ; 
 int /*<<< orphan*/  ZEND_DECLARE_LAMBDA_FUNCTION ; 
 int /*<<< orphan*/  ZEND_SYMBOL_FUNCTION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  function_table ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  imports_function ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC25(znode *result, zend_op_array *op_array, zend_ast_decl *decl, zend_bool toplevel) /* {{{ */
{
	zend_string *unqualified_name, *name, *lcname, *key;
	zend_op *opline;

	unqualified_name = decl->name;
	op_array->function_name = name = FUNC17(unqualified_name);
	lcname = FUNC24(name);

	if (FUNC1(imports_function)) {
		zend_string *import_name = FUNC15(
			FUNC1(imports_function), FUNC5(unqualified_name), FUNC4(unqualified_name));
		if (import_name && !FUNC20(lcname, import_name)) {
			FUNC13(E_COMPILE_ERROR, "Cannot declare function %s "
				"because the name is already in use", FUNC5(name));
		}
	}

	if (FUNC21(lcname, "__autoload")) {
		FUNC13(E_COMPILE_ERROR,
			"__autoload() is no longer supported, use spl_autoload_register() instead");
	}

	if (FUNC22(unqualified_name, "assert")) {
		FUNC12(E_COMPILE_ERROR,
			"Defining a custom assert() function is not allowed, "
			"as the function has special semantics");
	}

	FUNC18(lcname, ZEND_SYMBOL_FUNCTION);
	if (toplevel) {
		if (FUNC3(FUNC14(FUNC0(function_table), lcname, op_array) == NULL)) {
			FUNC6(lcname, op_array, 1);
		}
		FUNC23(lcname, 0);
		return;
	}

	key = FUNC10(lcname, decl->lex_pos);
	FUNC16(FUNC0(function_table), key, op_array);

	if (op_array->fn_flags & ZEND_ACC_CLOSURE) {
		opline = FUNC11(result, ZEND_DECLARE_LAMBDA_FUNCTION, NULL, NULL);
		opline->extended_value = FUNC9();
		opline->op1_type = IS_CONST;
		FUNC2(opline->op1, key);
	} else {
		opline = FUNC7();
		opline->opcode = ZEND_DECLARE_FUNCTION;
		opline->op1_type = IS_CONST;
		FUNC2(opline->op1, FUNC19(lcname));
		/* RTD key is placed after lcname literal in op1 */
		FUNC8(&key);
	}
	FUNC23(lcname, 0);
}