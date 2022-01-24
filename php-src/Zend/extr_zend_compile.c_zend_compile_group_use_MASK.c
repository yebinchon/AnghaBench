#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_8__ {size_t children; TYPE_2__** child; } ;
typedef  TYPE_1__ zend_ast_list ;
struct TYPE_9__ {scalar_t__ attr; int /*<<< orphan*/ * child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_AST_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(zend_ast *ast) /* {{{ */
{
	uint32_t i;
	zend_string *ns = FUNC6(ast->child[0]);
	zend_ast_list *list = FUNC5(ast->child[1]);

	for (i = 0; i < list->children; i++) {
		zend_ast *inline_use, *use = list->child[i];
		zval *name_zval = FUNC7(use->child[0]);
		zend_string *name = FUNC3(name_zval);
		zend_string *compound_ns = FUNC9(FUNC1(ns), FUNC0(ns), FUNC1(name), FUNC0(name));
		FUNC10(name, 0);
		FUNC2(name_zval, compound_ns);
		inline_use = FUNC4(1, ZEND_AST_USE, use);
		inline_use->attr = ast->attr ? ast->attr : use->attr;
		FUNC8(inline_use);
	}
}