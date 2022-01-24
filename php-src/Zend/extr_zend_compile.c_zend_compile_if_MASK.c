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
typedef  int /*<<< orphan*/  znode ;
struct TYPE_8__ {int children; TYPE_2__** child; } ;
typedef  TYPE_1__ zend_ast_list ;
struct TYPE_9__ {struct TYPE_9__** child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZEND_JMPZ ; 
 int /*<<< orphan*/  FUNC1 (size_t*) ; 
 size_t* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 

void FUNC9(zend_ast *ast) /* {{{ */
{
	zend_ast_list *list = FUNC3(ast);
	uint32_t i;
	uint32_t *jmp_opnums = NULL;

	if (list->children > 1) {
		jmp_opnums = FUNC2(sizeof(uint32_t), list->children - 1, 0);
	}

	for (i = 0; i < list->children; ++i) {
		zend_ast *elem_ast = list->child[i];
		zend_ast *cond_ast = elem_ast->child[0];
		zend_ast *stmt_ast = elem_ast->child[1];

		if (cond_ast) {
			znode cond_node;
			uint32_t opnum_jmpz;
			FUNC4(&cond_node, cond_ast);
			opnum_jmpz = FUNC6(ZEND_JMPZ, &cond_node, 0);

			FUNC5(stmt_ast);

			if (i != list->children - 1) {
				jmp_opnums[i] = FUNC7(0);
			}
			FUNC8(opnum_jmpz);
		} else {
			/* "else" can only occur as last element. */
			FUNC0(i == list->children - 1);
			FUNC5(stmt_ast);
		}
	}

	if (list->children > 1) {
		for (i = 0; i < list->children - 1; ++i) {
			FUNC8(jmp_opnums[i]);
		}
		FUNC1(jmp_opnums);
	}
}