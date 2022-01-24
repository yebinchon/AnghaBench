#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/  zo; TYPE_3__* ptr; } ;
typedef  TYPE_1__ finfo_object ;
struct TYPE_5__ {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object *object)
{
	finfo_object *intern = FUNC2(object);

	if (intern->ptr) {
		FUNC1(intern->ptr->magic);
		FUNC0(intern->ptr);
	}

	FUNC3(&intern->zo);
}