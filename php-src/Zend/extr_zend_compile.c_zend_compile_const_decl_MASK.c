#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_12__ {int /*<<< orphan*/  constant; } ;
struct TYPE_13__ {TYPE_1__ u; void* op_type; } ;
typedef  TYPE_2__ znode ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_14__ {size_t children; TYPE_4__** child; } ;
typedef  TYPE_3__ zend_ast_list ;
struct TYPE_15__ {struct TYPE_15__** child; } ;
typedef  TYPE_4__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* IS_CONST ; 
 int /*<<< orphan*/  ZEND_DECLARE_CONST ; 
 int /*<<< orphan*/  ZEND_SYMBOL_CONST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  imports_const ; 
 TYPE_3__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC15(zend_ast *ast) /* {{{ */
{
	zend_ast_list *list = FUNC4(ast);
	uint32_t i;
	for (i = 0; i < list->children; ++i) {
		zend_ast *const_ast = list->child[i];
		zend_ast *name_ast = const_ast->child[0];
		zend_ast *value_ast = const_ast->child[1];
		zend_string *unqualified_name = FUNC5(name_ast);

		zend_string *name;
		znode name_node, value_node;
		zval *value_zv = &value_node.u.constant;

		value_node.op_type = IS_CONST;
		FUNC6(value_zv, value_ast);

		if (FUNC9(FUNC2(unqualified_name), FUNC1(unqualified_name))) {
			FUNC8(E_COMPILE_ERROR,
				"Cannot redeclare constant '%s'", FUNC2(unqualified_name));
		}

		name = FUNC12(unqualified_name);
		name = FUNC11(name);

		if (FUNC0(imports_const)) {
			zend_string *import_name = FUNC10(FUNC0(imports_const), unqualified_name);
			if (import_name && !FUNC14(import_name, name)) {
				FUNC8(E_COMPILE_ERROR, "Cannot declare const %s because "
					"the name is already in use", FUNC2(name));
			}
		}

		name_node.op_type = IS_CONST;
		FUNC3(&name_node.u.constant, name);

		FUNC7(NULL, ZEND_DECLARE_CONST, &name_node, &value_node);

		FUNC13(name, ZEND_SYMBOL_CONST);
	}
}