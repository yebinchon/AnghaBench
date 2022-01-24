#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static zend_object *FUNC2(zend_object *old_object) /* {{{ */
{
	zend_object *new_object = FUNC0(old_object->ce, old_object, 1);

	FUNC1(new_object, old_object);

	return new_object;
}