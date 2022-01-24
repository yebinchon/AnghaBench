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
struct TYPE_3__ {int ce_flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(zval *list, zend_class_entry *pce, int allow, int ce_flags)
{
	if (!allow || (allow > 0 && pce->ce_flags & ce_flags) || (allow < 0 && !(pce->ce_flags & ce_flags))) {
		zval *tmp;

		if ((tmp = FUNC3(FUNC1(list), pce->name)) == NULL) {
			zval t;
			FUNC0(&t, pce->name);
			FUNC2(FUNC1(list), pce->name, &t);
		}
	}
}