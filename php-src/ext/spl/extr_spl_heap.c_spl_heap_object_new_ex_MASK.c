#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_27__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_5__ zend_object ;
struct TYPE_28__ {int /*<<< orphan*/  function_table; struct TYPE_28__* parent; } ;
typedef  TYPE_6__ zend_class_entry ;
typedef  int /*<<< orphan*/  spl_pqueue_elem ;
struct TYPE_29__ {TYPE_5__ std; TYPE_4__* fptr_count; TYPE_2__* fptr_cmp; void* heap; int /*<<< orphan*/  flags; int /*<<< orphan*/  ce_get_iterator; } ;
typedef  TYPE_7__ spl_heap_object ;
struct TYPE_25__ {TYPE_6__* scope; } ;
struct TYPE_26__ {TYPE_3__ common; } ;
struct TYPE_23__ {TYPE_6__* scope; } ;
struct TYPE_24__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  SPL_PQUEUE_EXTR_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_6__* spl_ce_SplHeap ; 
 TYPE_6__* spl_ce_SplMaxHeap ; 
 TYPE_6__* spl_ce_SplMinHeap ; 
 TYPE_6__* spl_ce_SplPriorityQueue ; 
 int /*<<< orphan*/  spl_handler_SplHeap ; 
 int /*<<< orphan*/  spl_handler_SplPriorityQueue ; 
 TYPE_7__* FUNC2 (TYPE_5__*) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spl_ptr_heap_pqueue_elem_ctor ; 
 int /*<<< orphan*/  spl_ptr_heap_pqueue_elem_dtor ; 
 int /*<<< orphan*/  spl_ptr_heap_zval_ctor ; 
 int /*<<< orphan*/  spl_ptr_heap_zval_dtor ; 
 int /*<<< orphan*/  spl_ptr_heap_zval_max_cmp ; 
 int /*<<< orphan*/  spl_ptr_heap_zval_min_cmp ; 
 int /*<<< orphan*/  spl_ptr_pqueue_elem_cmp ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_7__* FUNC6 (int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 

__attribute__((used)) static zend_object *FUNC8(zend_class_entry *class_type, zend_object *orig, int clone_orig) /* {{{ */
{
	spl_heap_object   *intern;
	zend_class_entry  *parent = class_type;
	int                inherited = 0;

	intern = FUNC6(sizeof(spl_heap_object), parent);

	FUNC7(&intern->std, class_type);
	FUNC0(&intern->std, class_type);

	if (orig) {
		spl_heap_object *other = FUNC2(orig);
		intern->std.handlers = other->std.handlers;
		intern->ce_get_iterator = other->ce_get_iterator;

		if (clone_orig) {
			intern->heap = FUNC3(other->heap);
		} else {
			intern->heap = other->heap;
		}

		intern->flags = other->flags;
		intern->fptr_cmp = other->fptr_cmp;
		intern->fptr_count = other->fptr_count;
		return &intern->std;
	}

	while (parent) {
		if (parent == spl_ce_SplPriorityQueue) {
			intern->heap = FUNC4(spl_ptr_pqueue_elem_cmp, spl_ptr_heap_pqueue_elem_ctor, spl_ptr_heap_pqueue_elem_dtor, sizeof(spl_pqueue_elem));
			intern->std.handlers = &spl_handler_SplPriorityQueue;
			intern->flags = SPL_PQUEUE_EXTR_DATA;
			break;
		}

		if (parent == spl_ce_SplMinHeap || parent == spl_ce_SplMaxHeap
				|| parent == spl_ce_SplHeap) {
			intern->heap = FUNC4(
				parent == spl_ce_SplMinHeap ? spl_ptr_heap_zval_min_cmp : spl_ptr_heap_zval_max_cmp,
				spl_ptr_heap_zval_ctor, spl_ptr_heap_zval_dtor, sizeof(zval));
			intern->std.handlers = &spl_handler_SplHeap;
			break;
		}

		parent = parent->parent;
		inherited = 1;
	}

	if (!parent) { /* this must never happen */
		FUNC1(NULL, E_COMPILE_ERROR, "Internal compiler error, Class is not child of SplHeap");
	}

	if (inherited) {
		intern->fptr_cmp = FUNC5(&class_type->function_table, "compare", sizeof("compare") - 1);
		if (intern->fptr_cmp->common.scope == parent) {
			intern->fptr_cmp = NULL;
		}
		intern->fptr_count = FUNC5(&class_type->function_table, "count", sizeof("count") - 1);
		if (intern->fptr_count->common.scope == parent) {
			intern->fptr_count = NULL;
		}
	}

	return &intern->std;
}