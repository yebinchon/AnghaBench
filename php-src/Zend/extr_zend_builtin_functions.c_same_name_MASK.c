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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zend_string *key, zend_string *name) /* {{{ */
{
	zend_string *lcname;
	int ret;

	if (key == name) {
		return 1;
	}
	if (FUNC0(key) != FUNC0(name)) {
		return 0;
	}
	lcname = FUNC4(name);
	ret = FUNC2(FUNC1(lcname), FUNC1(key), FUNC0(key)) == 0;
	FUNC3(lcname, 0);
	return ret;
}