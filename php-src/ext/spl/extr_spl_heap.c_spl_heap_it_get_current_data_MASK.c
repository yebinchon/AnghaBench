#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct TYPE_7__ {TYPE_4__* heap; } ;
typedef  TYPE_2__ spl_heap_object ;
struct TYPE_8__ {int flags; scalar_t__ count; } ;

/* Variables and functions */
 int SPL_HEAP_CORRUPTED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC3(zend_object_iterator *iter) /* {{{ */
{
	spl_heap_object *object = FUNC0(&iter->data);

	if (object->heap->flags & SPL_HEAP_CORRUPTED) {
		FUNC2(spl_ce_RuntimeException, "Heap is corrupted, heap properties are no longer ensured.", 0);
		return NULL;
	}

	if (object->heap->count == 0) {
		return NULL;
	} else {
		return FUNC1(object->heap, 0);
	}
}