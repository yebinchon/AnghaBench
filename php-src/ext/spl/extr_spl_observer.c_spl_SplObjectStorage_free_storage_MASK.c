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
struct TYPE_3__ {int /*<<< orphan*/ * gcdata; int /*<<< orphan*/  storage; int /*<<< orphan*/  std; } ;
typedef  TYPE_1__ spl_SplObjectStorage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zend_object *object) /* {{{ */
{
	spl_SplObjectStorage *intern = FUNC1(object);

	FUNC3(&intern->std);

	FUNC2(&intern->storage);

	if (intern->gcdata != NULL) {
		FUNC0(intern->gcdata);
	}

}