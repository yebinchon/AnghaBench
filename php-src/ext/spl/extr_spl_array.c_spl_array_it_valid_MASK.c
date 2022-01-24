#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct TYPE_9__ {int ar_flags; } ;
typedef  TYPE_2__ spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int SPL_ARRAY_OVERLOADED_VALID ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(zend_object_iterator *iter) /* {{{ */
{
	spl_array_object *object = FUNC0(&iter->data);
	HashTable *aht = FUNC1(object);

	if (object->ar_flags & SPL_ARRAY_OVERLOADED_VALID) {
		return FUNC4(iter);
	} else {
		return FUNC3(aht, FUNC2(aht, object));
	}
}