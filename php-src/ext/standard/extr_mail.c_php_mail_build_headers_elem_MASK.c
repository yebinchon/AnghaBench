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
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
#define  IS_ARRAY 129 
#define  IS_STRING 128 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(smart_str *s, zend_string *key, zval *val)
{
	switch(FUNC2(val)) {
		case IS_STRING:
			if (FUNC4(key) != SUCCESS) {
				FUNC3(NULL, E_WARNING, "Header field name (%s) contains invalid chars", FUNC0(key));
				return;
			}
			if (FUNC5(val) != SUCCESS) {
				FUNC3(NULL, E_WARNING, "Header field value (%s => %s) contains invalid chars or format", FUNC0(key), FUNC1(val));
				return;
			}
			FUNC7(s, key);
			FUNC8(s, ": ", 2);
			FUNC9(s, FUNC1(val));
			FUNC8(s, "\r\n", 2);
			break;
		case IS_ARRAY:
			FUNC6(s, key, val);
			break;
		default:
			FUNC3(NULL, E_WARNING, "headers array elements must be string or array (%s)", FUNC0(key));
	}
}