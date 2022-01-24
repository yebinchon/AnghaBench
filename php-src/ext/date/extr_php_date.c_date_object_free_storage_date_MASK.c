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
struct TYPE_3__ {int /*<<< orphan*/  std; scalar_t__ time; } ;
typedef  TYPE_1__ php_date_obj ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object *object) /* {{{ */
{
	php_date_obj *intern = FUNC0(object);

	if (intern->time) {
		FUNC1(intern->time);
	}

	FUNC2(&intern->std);
}