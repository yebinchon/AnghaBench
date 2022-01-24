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
typedef  int /*<<< orphan*/  zend_persistent_script ;
struct TYPE_11__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ zend_ast_zval ;
struct TYPE_12__ {size_t children; TYPE_3__** child; } ;
typedef  TYPE_2__ zend_ast_list ;
struct TYPE_13__ {scalar_t__ kind; struct TYPE_13__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ ZEND_AST_CONSTANT ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 size_t FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC6(zend_ast                *ast,
                                            zend_persistent_script  *script,
                                            void                    *buf)
{
	uint32_t i;

	if (ast->kind == ZEND_AST_ZVAL || ast->kind == ZEND_AST_CONSTANT) {
		FUNC5(&((zend_ast_zval*)ast)->val, script, buf);
	} else if (FUNC4(ast)) {
		zend_ast_list *list = FUNC2(ast);
		for (i = 0; i < list->children; i++) {
			if (list->child[i] && !FUNC0(list->child[i])) {
				FUNC1(list->child[i]);
				FUNC6(list->child[i], script, buf);
			}
		}
	} else {
		uint32_t children = FUNC3(ast);
		for (i = 0; i < children; i++) {
			if (ast->child[i] && !FUNC0(ast->child[i])) {
				FUNC1(ast->child[i]);
				FUNC6(ast->child[i], script, buf);
			}
		}
	}
}