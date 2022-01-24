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
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(smart_str *str, char *name, zval *value, char *indent)
{
	const char *type = FUNC5(value);

	if (FUNC2(value) == IS_ARRAY) {
		FUNC3(str, "%s    Constant [ %s %s ] { Array }\n",
						indent, type, name);
	} else if (FUNC2(value) == IS_STRING) {
		FUNC3(str, "%s    Constant [ %s %s ] { %s }\n",
						indent, type, name, FUNC1(value));
	} else {
		zend_string *tmp_value_str;
		zend_string *value_str = FUNC6(value, &tmp_value_str);
		FUNC3(str, "%s    Constant [ %s %s ] { %s }\n",
						indent, type, name, FUNC0(value_str));
		FUNC4(tmp_value_str);
	}
}