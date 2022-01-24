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
struct TYPE_3__ {int /*<<< orphan*/ * postfix; int /*<<< orphan*/ * prefix; int /*<<< orphan*/  std; scalar_t__ level; int /*<<< orphan*/ * iterators; } ;
typedef  TYPE_1__ spl_recursive_it_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object *_object)
{
	spl_recursive_it_object *object = FUNC2(_object);

	if (object->iterators) {
		FUNC0(object->iterators);
		object->iterators = NULL;
		object->level     = 0;
	}

	FUNC3(&object->std);
	FUNC1(&object->prefix[0]);
	FUNC1(&object->prefix[1]);
	FUNC1(&object->prefix[2]);
	FUNC1(&object->prefix[3]);
	FUNC1(&object->prefix[4]);
	FUNC1(&object->prefix[5]);

	FUNC1(&object->postfix[0]);
}