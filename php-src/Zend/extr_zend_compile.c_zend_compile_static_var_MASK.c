#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {struct TYPE_5__** child; } ;
typedef  TYPE_1__ zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_BIND_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC4(zend_ast *ast) /* {{{ */
{
	zend_ast *var_ast = ast->child[0];
	zend_ast *value_ast = ast->child[1];
	zval value_zv;

	if (value_ast) {
		FUNC3(&value_zv, value_ast);
	} else {
		FUNC0(&value_zv);
	}

	FUNC2(FUNC1(var_ast), &value_zv, ZEND_BIND_REF);
}