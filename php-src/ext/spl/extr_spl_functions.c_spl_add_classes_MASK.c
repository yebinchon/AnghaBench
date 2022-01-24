#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 

int FUNC2(zend_class_entry *pce, zval *list, int sub, int allow, int ce_flags)
{
	if (!pce) {
		return 0;
	}
	FUNC0(list, pce, allow, ce_flags);
	if (sub) {
		FUNC1(list, pce, allow, ce_flags);
		while (pce->parent) {
			pce = pce->parent;
			FUNC2(pce, list, sub, allow, ce_flags);
		}
	}
	return 0;
}