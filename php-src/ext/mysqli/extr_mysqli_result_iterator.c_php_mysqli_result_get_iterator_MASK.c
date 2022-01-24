#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_7__ {int row_num; TYPE_1__ intern; int /*<<< orphan*/  result; } ;
typedef  TYPE_2__ php_mysqli_result_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  php_mysqli_result_iterator_funcs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

zend_object_iterator *FUNC7(zend_class_entry *ce, zval *object, int by_ref)
{
	php_mysqli_result_iterator *iterator;

	if (by_ref) {
		FUNC5(E_ERROR, "An iterator cannot be used with foreach by reference");
	}
	iterator = FUNC4(1, sizeof(php_mysqli_result_iterator));
	FUNC6(&iterator->intern);

	FUNC1(object);
	FUNC0(&iterator->intern.data, FUNC3(object));
	iterator->intern.funcs = &php_mysqli_result_iterator_funcs;
	iterator->result = FUNC2(object);
	iterator->row_num = -1;

	return &iterator->intern;
}