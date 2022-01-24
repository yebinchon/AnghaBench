#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_user_iterator ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ zend_object_iterator ;
typedef  int /*<<< orphan*/  spl_pqueue_elem ;
struct TYPE_9__ {int /*<<< orphan*/  flags; TYPE_5__* heap; } ;
typedef  TYPE_3__ spl_heap_object ;
struct TYPE_10__ {int flags; scalar_t__ count; } ;

/* Variables and functions */
 int SPL_HEAP_CORRUPTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC5(zend_object_iterator *iter) /* {{{ */
{
	zend_user_iterator *user_it = (zend_user_iterator *) iter;
	spl_heap_object *object = FUNC1(&iter->data);

	if (object->heap->flags & SPL_HEAP_CORRUPTED) {
		FUNC4(spl_ce_RuntimeException, "Heap is corrupted, heap properties are no longer ensured.", 0);
		return NULL;
	}

	if (object->heap->count == 0) {
		return NULL;
	}

	if (FUNC0(user_it->value)) {
		spl_pqueue_elem *elem = FUNC2(object->heap, 0);
		FUNC3(&user_it->value, elem, object->flags);
	}
	return &user_it->value;
}