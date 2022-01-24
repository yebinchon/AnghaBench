#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_bool ;
struct TYPE_4__ {scalar_t__ kind; scalar_t__ attr; } ;
typedef  TYPE_1__ zend_ast ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ ZEND_ARRAY_SYNTAX_LONG ; 
 scalar_t__ ZEND_AST_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(zend_ast *var_ast, zend_bool old_style) /* {{{ */ {
	if (var_ast->kind == ZEND_AST_ARRAY) {
		if (var_ast->attr == ZEND_ARRAY_SYNTAX_LONG) {
			FUNC1(E_COMPILE_ERROR, "Cannot assign to array(), use [] instead");
		}
		if (old_style != var_ast->attr) {
			FUNC1(E_COMPILE_ERROR, "Cannot mix [] and list()");
		}
	} else if (!FUNC0(var_ast)) {
		FUNC1(E_COMPILE_ERROR, "Assignments can only happen to writable values");
	}
}