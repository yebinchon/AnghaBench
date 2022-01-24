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
struct TYPE_3__ {scalar_t__ orig_value; scalar_t__ value; scalar_t__ name; } ;
typedef  TYPE_1__ zend_ini_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(zval *zv) /* {{{ */
{
	zend_ini_entry *entry = (zend_ini_entry*)FUNC0(zv);

	FUNC3(entry->name, 1);
	if (entry->value) {
		FUNC2(entry->value);
	}
	if (entry->orig_value) {
		FUNC3(entry->orig_value, 1);
	}
	FUNC1(entry);
}