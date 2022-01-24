#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  constant; } ;
struct TYPE_18__ {scalar_t__ op_type; TYPE_1__ u; } ;
typedef  TYPE_2__ znode ;
struct TYPE_19__ {int /*<<< orphan*/  extended_value; } ;
typedef  TYPE_3__ zend_op ;
struct TYPE_20__ {struct TYPE_20__** child; } ;
typedef  TYPE_4__ zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ IS_CONST ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  ZEND_AST_VAR ; 
 int /*<<< orphan*/  ZEND_BIND_GLOBAL ; 
 int /*<<< orphan*/  ZEND_FETCH_GLOBAL_LOCK ; 
 int /*<<< orphan*/  ZEND_FETCH_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_4__*) ; 

void FUNC12(zend_ast *ast) /* {{{ */
{
	zend_ast *var_ast = ast->child[0];
	zend_ast *name_ast = var_ast->child[0];

	znode name_node, result;

	FUNC6(&name_node, name_ast);
	if (name_node.op_type == IS_CONST) {
		FUNC1(&name_node.u.constant);
	}

	if (FUNC2(var_ast)) {
		FUNC9(E_COMPILE_ERROR, "Cannot use $this as global variable");
	} else if (FUNC11(&result, var_ast) == SUCCESS) {
		zend_op *opline = FUNC8(NULL, ZEND_BIND_GLOBAL, &result, &name_node);
		opline->extended_value = FUNC3();
	} else {
		/* name_ast should be evaluated only. FETCH_GLOBAL_LOCK instructs FETCH_W
		 * to not free the name_node operand, so it can be reused in the following
		 * ASSIGN_REF, which then frees it. */
		zend_op *opline = FUNC8(&result, ZEND_FETCH_W, &name_node, NULL);
		opline->extended_value = ZEND_FETCH_GLOBAL_LOCK;

		if (name_node.op_type == IS_CONST) {
			FUNC10(FUNC0(name_node.u.constant));
		}

		FUNC7(
			FUNC4(ZEND_AST_VAR, FUNC5(&name_node)),
			&result
		);
	}
}