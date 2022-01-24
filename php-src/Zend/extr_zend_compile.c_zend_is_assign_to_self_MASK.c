#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_bool ;
struct TYPE_6__ {scalar_t__ kind; struct TYPE_6__** child; } ;
typedef  TYPE_1__ zend_ast ;

/* Variables and functions */
 scalar_t__ ZEND_AST_VAR ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

zend_bool FUNC5(zend_ast *var_ast, zend_ast *expr_ast) /* {{{ */
{
	if (expr_ast->kind != ZEND_AST_VAR || expr_ast->child[0]->kind != ZEND_AST_ZVAL) {
		return 0;
	}

	while (FUNC1(var_ast) && var_ast->kind != ZEND_AST_VAR) {
		var_ast = var_ast->child[0];
	}

	if (var_ast->kind != ZEND_AST_VAR || var_ast->child[0]->kind != ZEND_AST_ZVAL) {
		return 0;
	}

	{
		zend_string *name1 = FUNC4(FUNC0(var_ast->child[0]));
		zend_string *name2 = FUNC4(FUNC0(expr_ast->child[0]));
		zend_bool result = FUNC2(name1, name2);
		FUNC3(name1, 0);
		FUNC3(name2, 0);
		return result;
	}
}