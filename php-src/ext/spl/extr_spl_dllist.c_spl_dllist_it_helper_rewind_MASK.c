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
typedef  int /*<<< orphan*/  spl_ptr_llist_element ;
struct TYPE_3__ {int count; int /*<<< orphan*/ * head; int /*<<< orphan*/ * tail; } ;
typedef  TYPE_1__ spl_ptr_llist ;

/* Variables and functions */
 int SPL_DLLIST_IT_LIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(spl_ptr_llist_element **traverse_pointer_ptr, int *traverse_position_ptr, spl_ptr_llist *llist, int flags) /* {{{ */
{
	FUNC1(*traverse_pointer_ptr);

	if (flags & SPL_DLLIST_IT_LIFO) {
		*traverse_position_ptr = llist->count-1;
		*traverse_pointer_ptr  = llist->tail;
	} else {
		*traverse_position_ptr = 0;
		*traverse_pointer_ptr  = llist->head;
	}

	FUNC0(*traverse_pointer_ptr);
}