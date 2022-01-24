#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ spl_ptr_llist_element ;
struct TYPE_7__ {scalar_t__ gc_data_count; int /*<<< orphan*/ * gc_data; TYPE_1__* llist; } ;
typedef  TYPE_3__ spl_dllist_object ;
struct TYPE_5__ {scalar_t__ count; TYPE_2__* head; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC4(zend_object *obj, zval **gc_data, int *gc_data_count) /* {{{ */
{
	spl_dllist_object *intern = FUNC2(obj);
	spl_ptr_llist_element *current = intern->llist->head;
	int i = 0;

	if (intern->gc_data_count < intern->llist->count) {
		intern->gc_data_count = intern->llist->count;
		intern->gc_data = FUNC1(intern->gc_data, intern->gc_data_count, sizeof(zval), 0);
	}

	while (current) {
		FUNC0(&intern->gc_data[i++], &current->data);
		current = current->next;
	}

	*gc_data = intern->gc_data;
	*gc_data_count = i;
	return FUNC3(obj);
}