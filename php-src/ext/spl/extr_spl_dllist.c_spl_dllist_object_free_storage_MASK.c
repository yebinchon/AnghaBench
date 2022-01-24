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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_5__ {int /*<<< orphan*/  traverse_pointer; TYPE_2__* llist; int /*<<< orphan*/ * gc_data; int /*<<< orphan*/  std; } ;
typedef  TYPE_1__ spl_dllist_object ;
struct TYPE_6__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_object *object) /* {{{ */
{
	spl_dllist_object *intern = FUNC2(object);
	zval tmp;

	FUNC5(&intern->std);

	while (intern->llist->count > 0) {
		FUNC4(intern->llist, &tmp);
		FUNC6(&tmp);
	}

	if (intern->gc_data != NULL) {
		FUNC1(intern->gc_data);
	};

	FUNC3(intern->llist);
	FUNC0(intern->traverse_pointer);
}