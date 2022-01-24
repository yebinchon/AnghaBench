#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_10__ {scalar_t__ tz_info; scalar_t__ tz_abbr; } ;
typedef  TYPE_2__ timelib_time ;
struct TYPE_11__ {int /*<<< orphan*/  start_ce; TYPE_2__* current; } ;
typedef  TYPE_3__ php_period_obj ;
struct TYPE_12__ {TYPE_2__* time; } ;
typedef  TYPE_4__ php_date_obj ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  current; TYPE_1__ intern; } ;
typedef  TYPE_5__ date_period_it ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 () ; 

__attribute__((used)) static zval *FUNC5(zend_object_iterator *iter)
{
	date_period_it *iterator = (date_period_it *)iter;
	php_period_obj *object   = FUNC1(&iterator->intern.data);
	timelib_time   *it_time = object->current;
	php_date_obj   *newdateobj;

	/* Create new object */
	FUNC2(object->start_ce, &iterator->current);
	newdateobj = FUNC0(&iterator->current);
	newdateobj->time = FUNC4();
	*newdateobj->time = *it_time;
	if (it_time->tz_abbr) {
		newdateobj->time->tz_abbr = FUNC3(it_time->tz_abbr);
	}
	if (it_time->tz_info) {
		newdateobj->time->tz_info = it_time->tz_info;
	}

	return &iterator->current;
}