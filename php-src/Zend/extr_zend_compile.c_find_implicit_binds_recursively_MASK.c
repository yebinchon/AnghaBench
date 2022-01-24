#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_14__ {size_t children; TYPE_3__** child; } ;
typedef  TYPE_1__ zend_ast_list ;
struct TYPE_15__ {TYPE_3__** child; } ;
typedef  TYPE_2__ zend_ast_decl ;
struct TYPE_16__ {scalar_t__ kind; struct TYPE_16__** child; } ;
typedef  TYPE_3__ zend_ast ;
typedef  size_t uint32_t ;
struct TYPE_17__ {int varvars_used; int /*<<< orphan*/  uses; } ;
typedef  TYPE_4__ closure_info ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 scalar_t__ ZEND_AST_ARROW_FUNC ; 
 scalar_t__ ZEND_AST_CLOSURE ; 
 scalar_t__ ZEND_AST_VAR ; 
 scalar_t__ ZEND_AST_ZVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 size_t FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(closure_info *info, zend_ast *ast) {
	if (!ast) {
		return;
	}

	if (ast->kind == ZEND_AST_VAR) {
		zend_ast *name_ast = ast->child[0];
		if (name_ast->kind == ZEND_AST_ZVAL && FUNC0(FUNC4(name_ast)) == IS_STRING) {
			zend_string *name = FUNC3(name_ast);
			if (FUNC8(name)) {
				/* These is no need to explicitly import auto-globals. */
				return;
			}

			if (FUNC9(name, "this")) {
				/* $this does not need to be explicitly imported. */
				return;
			}

			FUNC7(&info->uses, name);
		} else {
			info->varvars_used = 1;
			FUNC10(info, name_ast);
		}
	} else if (FUNC5(ast)) {
		zend_ast_list *list = FUNC1(ast);
		uint32_t i;
		for (i = 0; i < list->children; i++) {
			FUNC10(info, list->child[i]);
		}
	} else if (ast->kind == ZEND_AST_CLOSURE) {
		/* For normal closures add the use() list. */
		zend_ast_decl *closure_ast = (zend_ast_decl *) ast;
		zend_ast *uses_ast = closure_ast->child[1];
		if (uses_ast) {
			zend_ast_list *uses_list = FUNC1(uses_ast);
			uint32_t i;
			for (i = 0; i < uses_list->children; i++) {
				FUNC7(&info->uses, FUNC3(uses_list->child[i]));
			}
		}
	} else if (ast->kind == ZEND_AST_ARROW_FUNC) {
		/* For arrow functions recursively check the expression. */
		zend_ast_decl *closure_ast = (zend_ast_decl *) ast;
		FUNC10(info, closure_ast->child[2]);
	} else if (!FUNC6(ast)) {
		uint32_t i, children = FUNC2(ast);
		for (i = 0; i < children; i++) {
			FUNC10(info, ast->child[i]);
		}
	}
}