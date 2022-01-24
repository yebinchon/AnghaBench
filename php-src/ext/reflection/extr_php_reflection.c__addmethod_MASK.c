#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_5__ {int fn_flags; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef  TYPE_2__ zend_function ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(zend_function *mptr, zend_class_entry *ce, zval *retval, zend_long filter)
{
	if (mptr->common.fn_flags & filter) {
		zval method;
		FUNC1(ce, mptr, NULL, &method);
		FUNC0(retval, &method);
	}
}