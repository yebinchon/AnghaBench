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
struct TYPE_3__ {struct TYPE_3__* arg_info; int /*<<< orphan*/  function_name; } ;
typedef  TYPE_1__ zend_internal_function ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(zval *zv)
{
	zend_internal_function *f = (zend_internal_function*)FUNC0(zv);

	FUNC2(f->function_name, 0);
	if (f->arg_info) {
		FUNC1(f->arg_info);
	}
	FUNC1(f);
}