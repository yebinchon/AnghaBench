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
struct TYPE_11__ {TYPE_1__ std; int /*<<< orphan*/  num; } ;
typedef  TYPE_2__ gmp_object ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static zend_object *FUNC4(zend_object *obj) /* {{{ */
{
	gmp_object *old_object = FUNC0(obj);
	gmp_object *new_object = FUNC0(FUNC1(obj->ce));

	FUNC3( &new_object->std, &old_object->std);

	FUNC2(new_object->num, old_object->num);

	return &new_object->std;
}