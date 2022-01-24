#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  constant; } ;
struct TYPE_9__ {TYPE_1__ u; int /*<<< orphan*/  op_type; } ;
typedef  TYPE_2__ znode ;
struct TYPE_10__ {size_t children; int /*<<< orphan*/ ** child; } ;
typedef  TYPE_3__ zend_ast_list ;
typedef  int /*<<< orphan*/  zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IS_CONST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(znode *result, zend_ast *ast) /* {{{ */
{
	zend_ast_list *list;
	uint32_t i;

	result->op_type = IS_CONST;
	FUNC0(&result->u.constant);

	if (!ast) {
		return;
	}

	list = FUNC1(ast);
	for (i = 0; i < list->children; ++i) {
		zend_ast *expr_ast = list->child[i];

		FUNC3(result);
		FUNC2(result, expr_ast);
	}
}