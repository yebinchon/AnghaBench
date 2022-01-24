#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  lc_name; } ;
typedef  TYPE_1__ zend_class_name ;
struct TYPE_9__ {size_t num_interfaces; TYPE_1__* interface_names; int /*<<< orphan*/  ce_flags; } ;
typedef  TYPE_2__ zend_class_entry ;
struct TYPE_10__ {int children; int /*<<< orphan*/ ** child; } ;
typedef  TYPE_3__ zend_ast_list ;
typedef  int /*<<< orphan*/  zend_ast ;
typedef  size_t uint32_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  ZEND_ACC_IMPLEMENT_INTERFACES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  active_class_entry ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(zend_ast *ast) /* {{{ */
{
	zend_ast_list *list = FUNC4(ast);
	zend_class_entry *ce = FUNC0(active_class_entry);
	zend_class_name *interface_names;
	uint32_t i;

	interface_names = FUNC3(sizeof(zend_class_name) * list->children);

	for (i = 0; i < list->children; ++i) {
		zend_ast *class_ast = list->child[i];
		zend_string *name = FUNC5(class_ast);

		if (!FUNC7(class_ast)) {
			FUNC2(interface_names);
			FUNC6(E_COMPILE_ERROR,
				"Cannot use '%s' as interface name as it is reserved", FUNC1(name));
		}

		interface_names[i].name = FUNC8(class_ast);
		interface_names[i].lc_name = FUNC9(interface_names[i].name);
	}

	ce->ce_flags |= ZEND_ACC_IMPLEMENT_INTERFACES;
	ce->num_interfaces = list->children;
	ce->interface_names = interface_names;
}