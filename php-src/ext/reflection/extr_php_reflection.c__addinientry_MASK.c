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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int module_number; int /*<<< orphan*/  name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_ini_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_ini_entry *ini_entry, zval *retval, int number)
{
	if (number == ini_entry->module_number) {
		zval zv;
		if (ini_entry->value) {
			FUNC1(&zv, ini_entry->value);
		} else {
			FUNC0(&zv);
		}
		FUNC3(FUNC2(retval), ini_entry->name, &zv);
	}
}