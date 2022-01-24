#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {int /*<<< orphan*/  function_name; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
typedef  TYPE_2__ zend_function ;
struct TYPE_10__ {TYPE_2__* constructor; } ;
typedef  TYPE_3__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(zend_class_entry *pce, zval *retval, zval *arg1)
{
	zend_function *func = pce->constructor;
	FUNC3(pce, retval);

	FUNC4(FUNC2(retval), pce, &func, FUNC1(func->common.function_name), FUNC0(func->common.function_name), NULL, 1, arg1, NULL);
	return 0;
}