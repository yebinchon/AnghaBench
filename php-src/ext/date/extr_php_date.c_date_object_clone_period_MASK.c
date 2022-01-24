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
struct TYPE_11__ {TYPE_1__ std; scalar_t__ interval; void* end; void* current; void* start; int /*<<< orphan*/  start_ce; int /*<<< orphan*/  include_start_date; int /*<<< orphan*/  recurrences; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_2__ php_period_obj ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static zend_object *FUNC5(zend_object *this_ptr) /* {{{ */
{
	php_period_obj *old_obj = FUNC1(this_ptr);
	php_period_obj *new_obj = FUNC1(FUNC0(old_obj->std.ce));

	FUNC4(&new_obj->std, &old_obj->std);
	new_obj->initialized = old_obj->initialized;
	new_obj->recurrences = old_obj->recurrences;
	new_obj->include_start_date = old_obj->include_start_date;
	new_obj->start_ce = old_obj->start_ce;

	if (old_obj->start) {
		new_obj->start = FUNC3(old_obj->start);
	}
	if (old_obj->current) {
		new_obj->current = FUNC3(old_obj->current);
	}
	if (old_obj->end) {
        new_obj->end = FUNC3(old_obj->end);
    }
    if (old_obj->interval) {
        new_obj->interval = FUNC2(old_obj->interval);
    }
	return &new_obj->std;
}