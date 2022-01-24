#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_2__ {int /*<<< orphan*/  current; } ;
typedef  TYPE_1__ date_period_it ;

/* Variables and functions */
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object_iterator *iter)
{
	date_period_it *iterator = (date_period_it *)iter;

	if (FUNC1(iterator->current) != IS_UNDEF) {
		FUNC2(&iterator->current);
		FUNC0(&iterator->current);
	}
}