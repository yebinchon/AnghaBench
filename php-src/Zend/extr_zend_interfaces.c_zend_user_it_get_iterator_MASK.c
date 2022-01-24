#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  ce; TYPE_1__ it; } ;
typedef  TYPE_2__ zend_user_iterator ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  zend_interface_iterator_funcs_iterator ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static zend_object_iterator *FUNC8(zend_class_entry *ce, zval *object, int by_ref)
{
	zend_user_iterator *iterator;

	if (by_ref) {
		FUNC7(NULL, "An iterator cannot be used with foreach by reference");
		return NULL;
	}

	iterator = FUNC5(sizeof(zend_user_iterator));

	FUNC6((zend_object_iterator*)iterator);

	FUNC2(object);
	FUNC0(&iterator->it.data, FUNC4(object));
	iterator->it.funcs = &zend_interface_iterator_funcs_iterator;
	iterator->ce = FUNC3(object);
	FUNC1(&iterator->value);
	return (zend_object_iterator*)iterator;
}