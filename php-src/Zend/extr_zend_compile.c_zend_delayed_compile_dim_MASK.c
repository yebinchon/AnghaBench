#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ op_type; } ;
typedef  TYPE_1__ znode ;
struct TYPE_23__ {scalar_t__ opcode; int /*<<< orphan*/  extended_value; } ;
typedef  TYPE_2__ zend_op ;
struct TYPE_24__ {scalar_t__ attr; struct TYPE_24__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VAR_IS ; 
 int /*<<< orphan*/  BP_VAR_R ; 
 int /*<<< orphan*/  BP_VAR_UNSET ; 
 int /*<<< orphan*/  BP_VAR_W ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  E_DEPRECATED ; 
 scalar_t__ IS_CONST ; 
 scalar_t__ IS_UNUSED ; 
 scalar_t__ ZEND_DIM_ALTERNATIVE_SYNTAX ; 
 int /*<<< orphan*/  ZEND_FETCH_DIM_R ; 
 int /*<<< orphan*/  ZEND_FETCH_DIM_WRITE ; 
 scalar_t__ ZEND_FETCH_OBJ_W ; 
 scalar_t__ ZEND_FETCH_STATIC_PROP_W ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_op *FUNC8(znode *result, zend_ast *ast, uint32_t type) /* {{{ */
{
	if (ast->attr == ZEND_DIM_ALTERNATIVE_SYNTAX) {
		FUNC4(E_DEPRECATED, "Array and string offset access syntax with curly braces is deprecated");
	}

	zend_ast *var_ast = ast->child[0];
	zend_ast *dim_ast = ast->child[1];
	zend_op *opline;

	znode var_node, dim_node;

	opline = FUNC2(&var_node, var_ast, type, 0);
	if (opline && type == BP_VAR_W && (opline->opcode == ZEND_FETCH_STATIC_PROP_W || opline->opcode == ZEND_FETCH_OBJ_W)) {
		opline->extended_value |= ZEND_FETCH_DIM_WRITE;
	}

	FUNC7(&var_node, var_ast, type);

	if (dim_ast == NULL) {
		if (type == BP_VAR_R || type == BP_VAR_IS) {
			FUNC5(E_COMPILE_ERROR, "Cannot use [] for reading");
		}
		if (type == BP_VAR_UNSET) {
			FUNC5(E_COMPILE_ERROR, "Cannot use [] for unsetting");
		}
		dim_node.op_type = IS_UNUSED;
	} else {
		FUNC1(&dim_node, dim_ast);
	}

	opline = FUNC3(result, ZEND_FETCH_DIM_R, &var_node, &dim_node);
	FUNC0(opline, result, type);

	if (dim_node.op_type == IS_CONST) {
		FUNC6(opline, &dim_node);
	}
	return opline;
}