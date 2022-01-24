#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_12__ {int type; int /*<<< orphan*/  constants_table; int /*<<< orphan*/  ce_flags; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ zend_class_constant ;

/* Variables and functions */
 scalar_t__ IS_CONSTANT_AST ; 
 int /*<<< orphan*/  ZEND_ACC_CONSTANTS_UPDATED ; 
 int ZEND_INTERNAL_CLASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(zend_string *name, zend_class_constant *c, zend_class_entry *ce, zend_class_entry *iface) /* {{{ */
{
	if (FUNC1(&ce->constants_table, c, name, iface)) {
		zend_class_constant *ct;
		if (FUNC0(c->value) == IS_CONSTANT_AST) {
			ce->ce_flags &= ~ZEND_ACC_CONSTANTS_UPDATED;
		}
		if (ce->type & ZEND_INTERNAL_CLASS) {
			ct = FUNC3(sizeof(zend_class_constant), 1);
			FUNC2(ct, c, sizeof(zend_class_constant));
			c = ct;
		}
		FUNC4(&ce->constants_table, name, c);
	}
}