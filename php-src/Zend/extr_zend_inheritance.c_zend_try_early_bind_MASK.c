#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_12__ {int ce_flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int zend_bool ;
typedef  scalar_t__ inheritance_status ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ INHERITANCE_SUCCESS ; 
 scalar_t__ INHERITANCE_UNRESOLVED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_EXPLICIT_ABSTRACT_CLASS ; 
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ; 
 int ZEND_ACC_INTERFACE ; 
 int ZEND_ACC_LINKED ; 
 int ZEND_ACC_TRAIT ; 
 int ZEND_ACC_UNRESOLVED_VARIANCE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_table ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

zend_bool FUNC14(zend_class_entry *ce, zend_class_entry *parent_ce, zend_string *lcname, zval *delayed_early_binding) /* {{{ */
{
	inheritance_status status = FUNC7(ce, parent_ce);

	if (FUNC2(status != INHERITANCE_UNRESOLVED)) {
		if (delayed_early_binding) {
			if (FUNC3(FUNC12(FUNC1(class_table), (Bucket*)delayed_early_binding, lcname) == NULL)) {
				FUNC9(E_COMPILE_ERROR, "Cannot declare %s %s, because the name is already in use", FUNC10(ce), FUNC5(ce->name));
				return 0;
			}
		} else {
			if (FUNC3(FUNC11(FUNC0(class_table), lcname, ce) == NULL)) {
				return 0;
			}
		}
		FUNC8(ce, parent_ce, status == INHERITANCE_SUCCESS);
		FUNC6(ce);
		if ((ce->ce_flags & (ZEND_ACC_IMPLICIT_ABSTRACT_CLASS|ZEND_ACC_INTERFACE|ZEND_ACC_TRAIT|ZEND_ACC_EXPLICIT_ABSTRACT_CLASS)) == ZEND_ACC_IMPLICIT_ABSTRACT_CLASS) {
			FUNC13(ce);
		}
		FUNC4(!(ce->ce_flags & ZEND_ACC_UNRESOLVED_VARIANCE));
		ce->ce_flags |= ZEND_ACC_LINKED;
		return 1;
	}
	return 0;
}