#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_4__ {TYPE_1__* object; scalar_t__ current_index; } ;
typedef  TYPE_2__ date_period_it ;
struct TYPE_3__ {int /*<<< orphan*/  start; scalar_t__ current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(zend_object_iterator *iter)
{
	date_period_it *iterator = (date_period_it *)iter;

	iterator->current_index = 0;
	if (iterator->object->current) {
		FUNC2(iterator->object->current);
	}
	if (!iterator->object->start) {
		FUNC3(NULL, "DatePeriod has not been initialized correctly");
		return;
	}
	iterator->object->current = FUNC1(iterator->object->start);
	FUNC0(iter);
}