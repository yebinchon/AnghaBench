#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  llist; } ;
typedef  TYPE_2__ spl_dllist_object ;
struct TYPE_9__ {int /*<<< orphan*/  traverse_position; int /*<<< orphan*/  traverse_pointer; } ;
typedef  TYPE_3__ spl_dllist_it ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(zend_object_iterator *iter) /* {{{ */
{
	spl_dllist_it *iterator = (spl_dllist_it *)iter;
	spl_dllist_object *object = FUNC0(&iter->data);

	FUNC2(iter);

	FUNC1(&iterator->traverse_pointer, &iterator->traverse_position, object->llist, object->flags);
}