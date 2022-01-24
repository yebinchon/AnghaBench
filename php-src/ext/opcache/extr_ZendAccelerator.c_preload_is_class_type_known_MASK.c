#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int zend_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_table ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC6(zend_class_entry *ce, zend_string *name) {
	if (FUNC3(name, "self") ||
		FUNC3(name, "parent") ||
		FUNC2(name, ce->name)) {
		return 1;
	}

	zend_string *lcname = FUNC5(name);
	zend_bool known = FUNC1(FUNC0(class_table), lcname);
	FUNC4(lcname);
	return known;
}