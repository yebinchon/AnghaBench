#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  constant; } ;
struct TYPE_24__ {scalar_t__ op_type; TYPE_1__ u; } ;
typedef  TYPE_2__ znode ;
struct TYPE_23__ {int /*<<< orphan*/  constant; } ;
struct TYPE_25__ {scalar_t__ op1_type; int /*<<< orphan*/  extended_value; TYPE_20__ op2; scalar_t__ op2_type; int /*<<< orphan*/  op1; } ;
typedef  TYPE_3__ zend_op ;
struct TYPE_26__ {struct TYPE_26__** child; } ;
typedef  TYPE_4__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VAR_FUNC_ARG ; 
 int /*<<< orphan*/  BP_VAR_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_CONST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_20__,TYPE_2__*) ; 
 int /*<<< orphan*/  ZEND_FETCH_CLASS_EXCEPTION ; 
 int /*<<< orphan*/  ZEND_FETCH_REF ; 
 int /*<<< orphan*/  ZEND_FETCH_STATIC_PROP_R ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_3__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

zend_op *FUNC12(znode *result, zend_ast *ast, uint32_t type, int by_ref, int delayed) /* {{{ */
{
	zend_ast *class_ast = ast->child[0];
	zend_ast *prop_ast = ast->child[1];

	znode class_node, prop_node;
	zend_op *opline;

	FUNC8(&class_node, class_ast, ZEND_FETCH_CLASS_EXCEPTION);

	FUNC9(&prop_node, prop_ast);

	if (delayed) {
		opline = FUNC10(result, ZEND_FETCH_STATIC_PROP_R, &prop_node, NULL);
	} else {
		opline = FUNC11(result, ZEND_FETCH_STATIC_PROP_R, &prop_node, NULL);
	}
	if (opline->op1_type == IS_CONST) {
		FUNC3(FUNC0(opline->op1));
		opline->extended_value = FUNC7(3);
	}
	if (class_node.op_type == IS_CONST) {
		opline->op2_type = IS_CONST;
		opline->op2.constant = FUNC4(
			FUNC2(class_node.u.constant));
		if (opline->op1_type != IS_CONST) {
			opline->extended_value = FUNC6();
		}
	} else {
		FUNC1(opline->op2, &class_node);
	}

	if (by_ref && (type == BP_VAR_W || type == BP_VAR_FUNC_ARG)) { /* shared with cache_slot */
		opline->extended_value |= ZEND_FETCH_REF;
	}

	FUNC5(opline, result, type);
	return opline;
}