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
struct TYPE_3__ {size_t num_interfaces; int ce_flags; int /*<<< orphan*/ * interfaces; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int ZEND_ACC_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(zval *list, zend_class_entry * pce, int allow, int ce_flags)
{
	uint32_t num_interfaces;

	if (pce->num_interfaces) {
		FUNC0(pce->ce_flags & ZEND_ACC_LINKED);
		for (num_interfaces = 0; num_interfaces < pce->num_interfaces; num_interfaces++) {
			FUNC1(list, pce->interfaces[num_interfaces], allow, ce_flags);
		}
	}
}