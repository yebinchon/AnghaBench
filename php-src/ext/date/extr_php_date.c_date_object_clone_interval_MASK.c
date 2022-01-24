#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_11__ {TYPE_1__ std; scalar_t__ diff; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_2__ php_interval_obj ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static zend_object *FUNC4(zend_object *this_ptr) /* {{{ */
{
	php_interval_obj *old_obj = FUNC1(this_ptr);
	php_interval_obj *new_obj = FUNC1(FUNC0(old_obj->std.ce));

	FUNC3(&new_obj->std, &old_obj->std);
	new_obj->initialized = old_obj->initialized;
	if (old_obj->diff) {
		new_obj->diff = FUNC2(old_obj->diff);
	}

	return &new_obj->std;
}