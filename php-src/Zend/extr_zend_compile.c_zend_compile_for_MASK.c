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
typedef  int /*<<< orphan*/  znode ;
struct TYPE_5__ {struct TYPE_5__** child; } ;
typedef  TYPE_1__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_JMPNZ ; 
 int /*<<< orphan*/  ZEND_NOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(zend_ast *ast) /* {{{ */
{
	zend_ast *init_ast = ast->child[0];
	zend_ast *cond_ast = ast->child[1];
	zend_ast *loop_ast = ast->child[2];
	zend_ast *stmt_ast = ast->child[3];

	znode result;
	uint32_t opnum_start, opnum_jmp, opnum_loop;

	FUNC2(&result, init_ast);
	FUNC5(&result);

	opnum_jmp = FUNC7(0);

	FUNC1(ZEND_NOP, NULL, 0);

	opnum_start = FUNC0();
	FUNC3(stmt_ast);

	opnum_loop = FUNC0();
	FUNC2(&result, loop_ast);
	FUNC5(&result);

	FUNC9(opnum_jmp);
	FUNC2(&result, cond_ast);
	FUNC4();

	FUNC6(ZEND_JMPNZ, &result, opnum_start);

	FUNC8(opnum_loop, NULL);
}