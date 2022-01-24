#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ zend_ast_zval ;
struct TYPE_10__ {int children; TYPE_3__** child; } ;
typedef  TYPE_2__ zend_ast_list ;
struct TYPE_11__ {scalar_t__ kind; struct TYPE_11__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ZEND_AST_CONSTANT ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 size_t FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_ast *ast)
{
	uint32_t i;

	if (ast->kind == ZEND_AST_ZVAL || ast->kind == ZEND_AST_CONSTANT) {
		FUNC0(sizeof(zend_ast_zval));
		FUNC4(&((zend_ast_zval*)(ast))->val);
	} else if (FUNC3(ast)) {
		zend_ast_list *list = FUNC1(ast);
		FUNC0(sizeof(zend_ast_list) - sizeof(zend_ast *) + sizeof(zend_ast *) * list->children);
		for (i = 0; i < list->children; i++) {
			if (list->child[i]) {
				FUNC5(list->child[i]);
			}
		}
	} else {
		uint32_t children = FUNC2(ast);
		FUNC0(sizeof(zend_ast) - sizeof(zend_ast *) + sizeof(zend_ast *) * children);
		for (i = 0; i < children; i++) {
			if (ast->child[i]) {
				FUNC5(ast->child[i]);
			}
		}
	}
}