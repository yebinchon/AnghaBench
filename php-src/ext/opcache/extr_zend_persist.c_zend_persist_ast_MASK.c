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
struct TYPE_11__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ zend_ast_zval ;
struct TYPE_12__ {int children; TYPE_3__** child; } ;
typedef  TYPE_2__ zend_ast_list ;
struct TYPE_13__ {scalar_t__ kind; struct TYPE_13__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 scalar_t__ ZEND_AST_CONSTANT ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 size_t FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static zend_ast *FUNC5(zend_ast *ast)
{
	uint32_t i;
	zend_ast *node;

	if (ast->kind == ZEND_AST_ZVAL || ast->kind == ZEND_AST_CONSTANT) {
		zend_ast_zval *copy = FUNC4(ast, sizeof(zend_ast_zval));
		FUNC3(&copy->val);
		node = (zend_ast *) copy;
	} else if (FUNC2(ast)) {
		zend_ast_list *list = FUNC0(ast);
		zend_ast_list *copy = FUNC4(ast,
			sizeof(zend_ast_list) - sizeof(zend_ast *) + sizeof(zend_ast *) * list->children);
		for (i = 0; i < list->children; i++) {
			if (copy->child[i]) {
				copy->child[i] = FUNC5(copy->child[i]);
			}
		}
		node = (zend_ast *) copy;
	} else {
		uint32_t children = FUNC1(ast);
		node = FUNC4(ast, sizeof(zend_ast) - sizeof(zend_ast *) + sizeof(zend_ast *) * children);
		for (i = 0; i < children; i++) {
			if (node->child[i]) {
				node->child[i] = FUNC5(node->child[i]);
			}
		}
	}

	return node;
}