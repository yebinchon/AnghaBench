#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  data; struct TYPE_6__* prev; int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ spl_ptr_llist_element ;
struct TYPE_7__ {int /*<<< orphan*/  (* dtor ) (TYPE_1__*) ;int /*<<< orphan*/  count; TYPE_1__* tail; int /*<<< orphan*/ * head; } ;
typedef  TYPE_2__ spl_ptr_llist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(spl_ptr_llist *llist, zval *ret) /* {{{ */
{
	spl_ptr_llist_element    *tail = llist->tail;

	if (tail == NULL) {
		FUNC2(ret);
		return;
	}

	if (tail->prev) {
		tail->prev->next = NULL;
	} else {
		llist->head = NULL;
	}

	llist->tail = tail->prev;
	llist->count--;
	FUNC1(ret, &tail->data);

	if (llist->dtor) {
		llist->dtor(tail);
	}

	FUNC2(&tail->data);

	FUNC0(tail);
}