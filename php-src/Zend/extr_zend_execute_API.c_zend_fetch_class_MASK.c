#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  ZEND_FETCH_CLASS_AUTO 131 
 int ZEND_FETCH_CLASS_DEFAULT ; 
 int ZEND_FETCH_CLASS_INTERFACE ; 
 int ZEND_FETCH_CLASS_MASK ; 
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ; 
#define  ZEND_FETCH_CLASS_PARENT 130 
#define  ZEND_FETCH_CLASS_SELF 129 
 int ZEND_FETCH_CLASS_SILENT ; 
#define  ZEND_FETCH_CLASS_STATIC 128 
 int ZEND_FETCH_CLASS_TRAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_execute_data ; 
 int /*<<< orphan*/  exception ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,char*,...) ; 

zend_class_entry *FUNC8(zend_string *class_name, int fetch_type) /* {{{ */
{
	zend_class_entry *ce, *scope;
	int fetch_sub_type = fetch_type & ZEND_FETCH_CLASS_MASK;

check_fetch_type:
	switch (fetch_sub_type) {
		case ZEND_FETCH_CLASS_SELF:
			scope = FUNC5();
			if (FUNC1(!scope)) {
				FUNC7(fetch_type, NULL, "Cannot access self:: when no class scope is active");
			}
			return scope;
		case ZEND_FETCH_CLASS_PARENT:
			scope = FUNC5();
			if (FUNC1(!scope)) {
				FUNC7(fetch_type, NULL, "Cannot access parent:: when no class scope is active");
				return NULL;
			}
			if (FUNC1(!scope->parent)) {
				FUNC7(fetch_type, NULL, "Cannot access parent:: when current class scope has no parent");
			}
			return scope->parent;
		case ZEND_FETCH_CLASS_STATIC:
			ce = FUNC3(FUNC0(current_execute_data));
			if (FUNC1(!ce)) {
				FUNC7(fetch_type, NULL, "Cannot access static:: when no class scope is active");
				return NULL;
			}
			return ce;
		case ZEND_FETCH_CLASS_AUTO: {
				fetch_sub_type = FUNC4(class_name);
				if (FUNC1(fetch_sub_type != ZEND_FETCH_CLASS_DEFAULT)) {
					goto check_fetch_type;
				}
			}
			break;
	}

	if (fetch_type & ZEND_FETCH_CLASS_NO_AUTOLOAD) {
		return FUNC6(class_name, NULL, fetch_type);
	} else if ((ce = FUNC6(class_name, NULL, fetch_type)) == NULL) {
		if (!(fetch_type & ZEND_FETCH_CLASS_SILENT) && !FUNC0(exception)) {
			if (fetch_sub_type == ZEND_FETCH_CLASS_INTERFACE) {
				FUNC7(fetch_type, NULL, "Interface '%s' not found", FUNC2(class_name));
			} else if (fetch_sub_type == ZEND_FETCH_CLASS_TRAIT) {
				FUNC7(fetch_type, NULL, "Trait '%s' not found", FUNC2(class_name));
			} else {
				FUNC7(fetch_type, NULL, "Class '%s' not found", FUNC2(class_name));
			}
		}
		return NULL;
	}
	return ce;
}