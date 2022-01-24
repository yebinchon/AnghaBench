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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(zval *zv, zend_ulong index, zend_string *key, int level, smart_str *buf) /* {{{ */
{
	if (key == NULL) { /* numeric key */
		FUNC2(buf, level+1);
		FUNC7(buf, (zend_long) index);
		FUNC9(buf, " => ", 4);

	} else { /* string key */
		zend_string *tmp_str;
		zend_string *ckey = FUNC3(key, "'\\", 2);
		tmp_str = FUNC4(FUNC1(ckey), FUNC0(ckey), "\0", 1, "' . \"\\0\" . '", 12);

		FUNC2(buf, level + 1);

		FUNC8(buf, '\'');
		FUNC6(buf, tmp_str);
		FUNC9(buf, "' => ", 5);

		FUNC10(ckey);
		FUNC10(tmp_str);
	}
	FUNC5(zv, level + 2, buf);

	FUNC8(buf, ',');
	FUNC8(buf, '\n');
}