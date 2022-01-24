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
typedef  scalar_t__ zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const**,char const**,size_t*) ; 

__attribute__((used)) static void FUNC9(zval *zv, zend_ulong index, zend_string *key, int level, smart_str *buf) /* {{{ */
{
	FUNC0(buf, level + 2);
	if (key != NULL) {
		const char *class_name, *prop_name;
		size_t prop_name_len;
		zend_string *pname_esc;

		FUNC8(key, &class_name, &prop_name, &prop_name_len);
		pname_esc = FUNC1(prop_name, prop_name_len, "'\\", 2);

		FUNC5(buf, '\'');
		FUNC3(buf, pname_esc);
		FUNC5(buf, '\'');
		FUNC7(pname_esc, 0);
	} else {
		FUNC4(buf, (zend_long) index);
	}
	FUNC6(buf, " => ", 4);
	FUNC2(zv, level + 2, buf);
	FUNC5(buf, ',');
	FUNC5(buf, '\n');
}