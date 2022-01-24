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
struct TYPE_5__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  spl_filesystem_object ;
struct TYPE_6__ {TYPE_1__ intern; int /*<<< orphan*/  current; } ;
typedef  TYPE_2__ spl_filesystem_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  spl_filesystem_dir_it_funcs ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

zend_object_iterator *FUNC6(zend_class_entry *ce, zval *object, int by_ref)
{
	spl_filesystem_iterator *iterator;
	spl_filesystem_object *dir_object;

	if (by_ref) {
		FUNC5(spl_ce_RuntimeException, "An iterator cannot be used with foreach by reference", 0);
		return NULL;
	}
	dir_object = FUNC3(object);
	iterator = FUNC4(dir_object);
	FUNC1(object);
	FUNC0(&iterator->intern.data, FUNC2(object));
	iterator->intern.funcs = &spl_filesystem_dir_it_funcs;
	/* ->current must be initialized; rewind doesn't set it and valid
	 * doesn't check whether it's set */
	iterator->current = *object;

	return &iterator->intern;
}