#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode ;
struct TYPE_20__ {int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ zend_op ;
struct TYPE_21__ {int kind; int /*<<< orphan*/  attr; struct TYPE_21__** child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VAR_R ; 
 int /*<<< orphan*/  BP_VAR_W ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  ZEND_ASSIGN ; 
 int /*<<< orphan*/  ZEND_ASSIGN_DIM ; 
 int /*<<< orphan*/  ZEND_ASSIGN_OBJ ; 
 int /*<<< orphan*/  ZEND_ASSIGN_STATIC_PROP ; 
#define  ZEND_AST_ARRAY 132 
#define  ZEND_AST_DIM 131 
#define  ZEND_AST_PROP 130 
#define  ZEND_AST_STATIC_PROP 129 
#define  ZEND_AST_VAR 128 
 int /*<<< orphan*/  ZEND_MAKE_REF ; 
 int /*<<< orphan*/  ZEND_QM_ASSIGN ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC20(znode *result, zend_ast *ast) /* {{{ */
{
	zend_ast *var_ast = ast->child[0];
	zend_ast *expr_ast = ast->child[1];

	znode var_node, expr_node;
	zend_op *opline;
	uint32_t offset;

	if (FUNC1(var_ast)) {
		FUNC15(E_COMPILE_ERROR, "Cannot re-assign $this");
	}

	FUNC14(var_ast);

	switch (var_ast->kind) {
		case ZEND_AST_VAR:
			offset = FUNC6();
			FUNC10(&var_node, var_ast, BP_VAR_W, 0);
			FUNC2(&expr_node, expr_ast);
			FUNC8(offset);
			FUNC11(result, ZEND_ASSIGN, &var_node, &expr_node);
			return;
		case ZEND_AST_STATIC_PROP:
			offset = FUNC6();
			FUNC10(result, var_ast, BP_VAR_W, 0);
			FUNC2(&expr_node, expr_ast);

			opline = FUNC8(offset);
			opline->opcode = ZEND_ASSIGN_STATIC_PROP;

			FUNC12(&expr_node);
			return;
		case ZEND_AST_DIM:
			offset = FUNC6();
			FUNC7(result, var_ast, BP_VAR_W);

			if (FUNC16(var_ast, expr_ast)
			 && !FUNC1(expr_ast)) {
				/* $a[0] = $a should evaluate the right $a first */
				znode cv_node;

				if (FUNC19(&cv_node, expr_ast) == FAILURE) {
					FUNC4(&expr_node, expr_ast, BP_VAR_R, 0);
				} else {
					FUNC13(&expr_node, ZEND_QM_ASSIGN, &cv_node, NULL);
				}
			} else {
				FUNC2(&expr_node, expr_ast);
			}

			opline = FUNC8(offset);
			opline->opcode = ZEND_ASSIGN_DIM;

			opline = FUNC12(&expr_node);
			return;
		case ZEND_AST_PROP:
			offset = FUNC6();
			FUNC9(result, var_ast, BP_VAR_W);
			FUNC2(&expr_node, expr_ast);

			opline = FUNC8(offset);
			opline->opcode = ZEND_ASSIGN_OBJ;

			FUNC12(&expr_node);
			return;
		case ZEND_AST_ARRAY:
			if (FUNC18(var_ast)) {
				if (!FUNC17(expr_ast)) {
					FUNC15(E_COMPILE_ERROR,
						"Cannot assign reference to non referencable value");
				}

				FUNC5(&expr_node, expr_ast, BP_VAR_W, 1);
				/* MAKE_REF is usually not necessary for CVs. However, if there are
				 * self-assignments, this forces the RHS to evaluate first. */
				FUNC11(&expr_node, ZEND_MAKE_REF, &expr_node, NULL);
			} else {
				if (expr_ast->kind == ZEND_AST_VAR) {
					/* list($a, $b) = $a should evaluate the right $a first */
					znode cv_node;

					if (FUNC19(&cv_node, expr_ast) == FAILURE) {
						FUNC4(&expr_node, expr_ast, BP_VAR_R, 0);
					} else {
						FUNC13(&expr_node, ZEND_QM_ASSIGN, &cv_node, NULL);
					}
				} else {
					FUNC2(&expr_node, expr_ast);
				}
			}

			FUNC3(result, var_ast, &expr_node, var_ast->attr);
			return;
		FUNC0();
	}
}