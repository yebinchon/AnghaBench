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
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct TYPE_7__ {int flags; scalar_t__ current; } ;
typedef  TYPE_2__ spl_fixedarray_object ;

/* Variables and functions */
 int SPL_FIXEDARRAY_OVERLOADED_REWIND ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(zend_object_iterator *iter) /* {{{ */
{
	spl_fixedarray_object *object = FUNC0(&iter->data);

	if (object->flags & SPL_FIXEDARRAY_OVERLOADED_REWIND) {
		FUNC1(iter);
	} else {
		object->current = 0;
	}
}