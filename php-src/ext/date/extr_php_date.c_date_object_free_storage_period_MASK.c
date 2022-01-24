#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {int /*<<< orphan*/  std; int /*<<< orphan*/  interval; scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
typedef  TYPE_1__ php_period_obj ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object *object) /* {{{ */
{
	php_period_obj *intern = FUNC0(object);

	if (intern->start) {
		FUNC2(intern->start);
	}

	if (intern->current) {
		FUNC2(intern->current);
	}

	if (intern->end) {
		FUNC2(intern->end);
	}

	FUNC1(intern->interval);
	FUNC3(&intern->std);
}