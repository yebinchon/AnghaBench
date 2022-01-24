#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  op_type; } ;
typedef  TYPE_1__ znode ;
struct TYPE_25__ {scalar_t__ op2_type; int /*<<< orphan*/  extended_value; int /*<<< orphan*/  op2; } ;
typedef  TYPE_2__ zend_op ;
struct TYPE_26__ {struct TYPE_26__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_24__ {int /*<<< orphan*/  fn_flags; } ;

/* Variables and functions */
 TYPE_22__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_CONST ; 
 int /*<<< orphan*/  IS_UNUSED ; 
 int /*<<< orphan*/  ZEND_ACC_USES_THIS ; 
 int /*<<< orphan*/  ZEND_FETCH_OBJ_R ; 
 int /*<<< orphan*/  ZEND_FETCH_THIS ; 
 int /*<<< orphan*/  active_op_array ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_op *FUNC12(znode *result, zend_ast *ast, uint32_t type) /* {{{ */
{
	zend_ast *obj_ast = ast->child[0];
	zend_ast *prop_ast = ast->child[1];

	znode obj_node, prop_node;
	zend_op *opline;

	if (FUNC3(obj_ast)) {
		if (FUNC4()) {
			obj_node.op_type = IS_UNUSED;
		} else {
			FUNC10(&obj_node, ZEND_FETCH_THIS, NULL, NULL);
		}
		FUNC0(active_op_array)->fn_flags |= ZEND_ACC_USES_THIS;
	} else {
		opline = FUNC8(&obj_node, obj_ast, type, 0);
		FUNC11(&obj_node, obj_ast, type);
	}
	FUNC7(&prop_node, prop_ast);

	opline = FUNC9(result, ZEND_FETCH_OBJ_R, &obj_node, &prop_node);
	if (opline->op2_type == IS_CONST) {
		FUNC2(FUNC1(opline->op2));
		opline->extended_value = FUNC6(3);
	}

	FUNC5(opline, result, type);
	return opline;
}