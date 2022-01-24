#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_7__ {int /*<<< orphan*/  data; struct TYPE_7__* next; } ;
typedef  TYPE_2__ spl_ptr_llist_element ;
struct TYPE_9__ {int /*<<< orphan*/  properties; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; TYPE_5__ std; TYPE_1__* llist; } ;
typedef  TYPE_3__ spl_dllist_object ;
typedef  int /*<<< orphan*/  copy_ctor_func_t ;
struct TYPE_6__ {TYPE_2__* head; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  spl_ce_SplDoublyLinkedList ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ zval_add_ref ; 

__attribute__((used)) static HashTable* FUNC12(zend_object *obj, int *is_temp) /* {{{{ */
{
	spl_dllist_object     *intern  = FUNC6(obj);
	spl_ptr_llist_element *current = intern->llist->head, *next;
	zval tmp, dllist_array;
	zend_string *pnstr;
	int  i = 0;
	HashTable *debug_info;
	*is_temp = 1;

	if (!intern->std.properties) {
		FUNC5(&intern->std);
	}

	debug_info = FUNC10(1);
	FUNC9(debug_info, intern->std.properties, (copy_ctor_func_t) zval_add_ref);

	pnstr = FUNC7(spl_ce_SplDoublyLinkedList, "flags", sizeof("flags")-1);
	FUNC0(&tmp, intern->flags);
	FUNC8(debug_info, pnstr, &tmp);
	FUNC11(pnstr, 0);

	FUNC4(&dllist_array);

	while (current) {
		next = current->next;

		FUNC3(&dllist_array, i, &current->data);
		if (FUNC2(current->data)) {
			FUNC1(current->data);
		}
		i++;

		current = next;
	}

	pnstr = FUNC7(spl_ce_SplDoublyLinkedList, "dllist", sizeof("dllist")-1);
	FUNC8(debug_info, pnstr, &dllist_array);
	FUNC11(pnstr, 0);

	return debug_info;
}