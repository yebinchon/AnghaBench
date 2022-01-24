#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {scalar_t__ ce; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  compare_func_t ;
struct TYPE_4__ {int /*<<< orphan*/  storage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ spl_ce_SplObjectStorage ; 
 scalar_t__ spl_object_storage_compare_info ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(zval *o1, zval *o2) /* {{{ */
{
	zend_object *zo1;
	zend_object *zo2;

	FUNC0(o1, o2);

	zo1 = (zend_object *)FUNC1(o1);
	zo2 = (zend_object *)FUNC1(o2);

	if (zo1->ce != spl_ce_SplObjectStorage || zo2->ce != spl_ce_SplObjectStorage) {
		return 1;
	}

	return FUNC3(&(FUNC2(o1))->storage, &(FUNC2(o2))->storage, (compare_func_t)spl_object_storage_compare_info, 0);
}