#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ spl_ptr_llist_element ;
typedef  int /*<<< orphan*/  spl_ptr_llist ;

/* Variables and functions */
 int SPL_DLLIST_IT_DELETE ; 
 int SPL_DLLIST_IT_LIFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(spl_ptr_llist_element **traverse_pointer_ptr, int *traverse_position_ptr, spl_ptr_llist *llist, int flags) /* {{{ */
{
	if (*traverse_pointer_ptr) {
		spl_ptr_llist_element *old = *traverse_pointer_ptr;

		if (flags & SPL_DLLIST_IT_LIFO) {
			*traverse_pointer_ptr = old->prev;
			(*traverse_position_ptr)--;

			if (flags & SPL_DLLIST_IT_DELETE) {
				zval prev;
				FUNC2(llist, &prev);

				FUNC4(&prev);
			}
		} else {
			*traverse_pointer_ptr = old->next;

			if (flags & SPL_DLLIST_IT_DELETE) {
				zval prev;
				FUNC3(llist, &prev);

				FUNC4(&prev);
			} else {
				(*traverse_position_ptr)++;
			}
		}

		FUNC1(old);
		FUNC0(*traverse_pointer_ptr);
	}
}