#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_11__ {int type; int /*<<< orphan*/  constants_table; int /*<<< orphan*/  ce_flags; TYPE_1__* parent; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ zend_class_entry ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ zend_class_constant ;
struct TYPE_10__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ IS_CONSTANT_AST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ZEND_ACC_CONSTANTS_UPDATED ; 
 int ZEND_ACC_PPP_MASK ; 
 int ZEND_ACC_PRIVATE ; 
 int ZEND_ACC_PUBLIC ; 
 int ZEND_INTERNAL_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(zend_string *name, zend_class_constant *parent_const, zend_class_entry *ce) /* {{{ */
{
	zval *zv = FUNC9(&ce->constants_table, name, 1);
	zend_class_constant *c;

	if (zv != NULL) {
		c = (zend_class_constant*)FUNC3(zv);
		if (FUNC0((FUNC2(c->value) & ZEND_ACC_PPP_MASK) > (FUNC2(parent_const->value) & ZEND_ACC_PPP_MASK))) {
			FUNC8(E_COMPILE_ERROR, "Access level to %s::%s must be %s (as in class %s)%s",
				FUNC1(ce->name), FUNC1(name), FUNC10(FUNC2(parent_const->value)), FUNC1(ce->parent->name), (FUNC2(parent_const->value) & ZEND_ACC_PUBLIC) ? "" : " or weaker");
		}
	} else if (!(FUNC2(parent_const->value) & ZEND_ACC_PRIVATE)) {
		if (FUNC4(parent_const->value) == IS_CONSTANT_AST) {
			ce->ce_flags &= ~ZEND_ACC_CONSTANTS_UPDATED;
		}
		if (ce->type & ZEND_INTERNAL_CLASS) {
			c = FUNC7(sizeof(zend_class_constant), 1);
			FUNC6(c, parent_const, sizeof(zend_class_constant));
			parent_const = c;
		}
		FUNC5(&ce->constants_table, name, parent_const);
	}
}