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
typedef  int /*<<< orphan*/  zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_4__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  current; int /*<<< orphan*/  object; TYPE_1__ intern; } ;
typedef  TYPE_2__ date_period_it ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  date_period_it_funcs ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

zend_object_iterator *FUNC8(zend_class_entry *ce, zval *object, int by_ref) /* {{{ */
{
	date_period_it *iterator;

	if (by_ref) {
		FUNC7(NULL, "An iterator cannot be used with foreach by reference");
		return NULL;
	}

	iterator = FUNC5(sizeof(date_period_it));

	FUNC6((zend_object_iterator*)iterator);

	FUNC2(object);
	FUNC0(&iterator->intern.data, FUNC3(object));
	iterator->intern.funcs = &date_period_it_funcs;
	iterator->object = FUNC4(object);
	FUNC1(&iterator->current);

	return (zend_object_iterator*)iterator;
}