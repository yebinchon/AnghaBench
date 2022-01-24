#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_12__ {int ce_flags; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_13__ {size_t children; TYPE_3__** child; } ;
typedef  TYPE_2__ zend_ast_list ;
struct TYPE_14__ {int attr; struct TYPE_14__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_ACC_ABSTRACT ; 
 int ZEND_ACC_FINAL ; 
 int ZEND_ACC_STATIC ; 
 int ZEND_ACC_TRAIT ; 
 int /*<<< orphan*/  active_class_entry ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(zend_ast *ast) /* {{{ */
{
	zend_ast_list *list = FUNC2(ast);
	zend_class_entry *ce = FUNC0(active_class_entry);
	uint32_t i;

	if ((ce->ce_flags & ZEND_ACC_TRAIT) != 0) {
		FUNC8(E_COMPILE_ERROR, "Traits cannot have constants");
		return;
	}

	for (i = 0; i < list->children; ++i) {
		zend_ast *const_ast = list->child[i];
		zend_ast *name_ast = const_ast->child[0];
		zend_ast *value_ast = const_ast->child[1];
		zend_ast *doc_comment_ast = const_ast->child[2];
		zend_string *name = FUNC10(FUNC4(name_ast));
		zend_string *doc_comment = doc_comment_ast ? FUNC9(FUNC3(doc_comment_ast)) : NULL;
		zval value_zv;

		if (FUNC1(ast->attr & (ZEND_ACC_STATIC|ZEND_ACC_ABSTRACT|ZEND_ACC_FINAL))) {
			FUNC5(ast->attr, "constant");
		}

		FUNC6(&value_zv, value_ast);
		FUNC7(ce, name, &value_zv, ast->attr, doc_comment);
	}
}