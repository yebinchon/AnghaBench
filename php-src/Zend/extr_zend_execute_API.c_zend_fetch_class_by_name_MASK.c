#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int ZEND_FETCH_CLASS_EXCEPTION ; 
 int ZEND_FETCH_CLASS_INTERFACE ; 
 int ZEND_FETCH_CLASS_MASK ; 
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ; 
 int ZEND_FETCH_CLASS_SILENT ; 
 int ZEND_FETCH_CLASS_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

zend_class_entry *FUNC9(zend_string *class_name, zend_string *key, int fetch_type) /* {{{ */
{
	zend_class_entry *ce;

	if (fetch_type & ZEND_FETCH_CLASS_NO_AUTOLOAD) {
		return FUNC6(class_name, key, fetch_type);
	} else if ((ce = FUNC6(class_name, key, fetch_type)) == NULL) {
		if (fetch_type & ZEND_FETCH_CLASS_SILENT) {
			return NULL;
		}
		if (FUNC0(exception)) {
			if (!(fetch_type & ZEND_FETCH_CLASS_EXCEPTION)) {
				zend_string *exception_str;
				zval exception_zv;
				FUNC2(&exception_zv, FUNC0(exception));
				FUNC3(exception_zv);
				FUNC4();
				exception_str = FUNC8(&exception_zv);
				FUNC5(E_ERROR,
					"During class fetch: Uncaught %s", FUNC1(exception_str));
			}
			return NULL;
		}
		if ((fetch_type & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_INTERFACE) {
			FUNC7(fetch_type, NULL, "Interface '%s' not found", FUNC1(class_name));
		} else if ((fetch_type & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_TRAIT) {
			FUNC7(fetch_type, NULL, "Trait '%s' not found", FUNC1(class_name));
		} else {
			FUNC7(fetch_type, NULL, "Class '%s' not found", FUNC1(class_name));
		}
		return NULL;
	}
	return ce;
}