#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * alias; int /*<<< orphan*/  modifiers; int /*<<< orphan*/  trait_method; } ;
typedef  TYPE_1__ zend_trait_alias ;
struct TYPE_10__ {int /*<<< orphan*/  attr; struct TYPE_10__** child; } ;
typedef  TYPE_2__ zend_ast ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  trait_aliases; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  active_class_entry ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(zend_ast *ast) /* {{{ */
{
	zend_ast *method_ref_ast = ast->child[0];
	zend_ast *alias_ast = ast->child[1];
	uint32_t modifiers = ast->attr;

	zend_trait_alias *alias;

	FUNC4(modifiers, "method");

	alias = FUNC1(sizeof(zend_trait_alias));
	FUNC5(method_ref_ast, &alias->trait_method);
	alias->modifiers = modifiers;

	if (alias_ast) {
		alias->alias = FUNC6(FUNC3(alias_ast));
	} else {
		alias->alias = NULL;
	}

	FUNC2(&FUNC0(active_class_entry)->trait_aliases, alias);
}