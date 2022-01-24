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
 scalar_t__ IS_INDIRECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zval *ptr, zend_string *key, zend_class_entry *ce, zval *retval)
{
	zval property;

	/* under some circumstances, the properties hash table may contain numeric
	 * properties (e.g. when casting from array). This is a WON'T FIX bug, at
	 * least for the moment. Ignore these */
	if (key == NULL) {
		return;
	}

	/* Not a dynamic property */
	if (FUNC0(ptr) == IS_INDIRECT) {
		return;
	}

	FUNC2(ce, key, NULL, &property);
	FUNC1(retval, &property);
}