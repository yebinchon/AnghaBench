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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int GC_PERSISTENT ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(zend_ulong h, zend_string *key, zval *entry, zval *retval)
{
	if (FUNC6(entry) == IS_STRING) {
		zend_string *str = FUNC5(entry);
		if (!FUNC1(str)) {
			if (!(FUNC0(str) & GC_PERSISTENT)) {
				FUNC12(str);
			} else {
				str = FUNC13(FUNC3(str), FUNC2(str), 0);
			}
		}

		if (key) {
			FUNC7(retval, FUNC3(key), FUNC2(key), str);
		} else {
			FUNC9(retval, h, str);
		}
	} else if (FUNC6(entry) == IS_ARRAY) {
		zval tmp;
		FUNC10(&tmp);
		FUNC8(FUNC4(entry), &tmp);
		FUNC11(FUNC4(retval), key, &tmp);
	}
}