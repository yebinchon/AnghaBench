#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  spl_pqueue_elem ;
struct TYPE_7__ {int /*<<< orphan*/  properties; } ;
struct TYPE_5__ {TYPE_3__* heap; int /*<<< orphan*/  flags; TYPE_4__ std; } ;
typedef  TYPE_1__ spl_heap_object ;
typedef  int /*<<< orphan*/  copy_ctor_func_t ;
struct TYPE_6__ {int flags; int count; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int SPL_HEAP_CORRUPTED ; 
 int /*<<< orphan*/  SPL_PQUEUE_EXTR_BOTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/ * spl_ce_SplPriorityQueue ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC7 (TYPE_3__*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ zval_add_ref ; 

__attribute__((used)) static HashTable* FUNC15(zend_class_entry *ce, zend_object *obj, int *is_temp) { /* {{{ */
	spl_heap_object *intern = FUNC8(obj);
	zval tmp, heap_array;
	zend_string *pnstr;
	HashTable *debug_info;
	int  i;

	*is_temp = 1;

	if (!intern->std.properties) {
		FUNC5(&intern->std);
	}

	debug_info = FUNC13(FUNC11(intern->std.properties) + 1);
	FUNC10(debug_info, intern->std.properties, (copy_ctor_func_t) zval_add_ref);

	pnstr = FUNC6(ce, "flags", sizeof("flags")-1);
	FUNC1(&tmp, intern->flags);
	FUNC12(debug_info, pnstr, &tmp);
	FUNC14(pnstr, 0);

	pnstr = FUNC6(ce, "isCorrupted", sizeof("isCorrupted")-1);
	FUNC0(&tmp, intern->heap->flags&SPL_HEAP_CORRUPTED);
	FUNC12(debug_info, pnstr, &tmp);
	FUNC14(pnstr, 0);

	FUNC4(&heap_array);

	for (i = 0; i < intern->heap->count; ++i) {
		if (ce == spl_ce_SplPriorityQueue) {
			spl_pqueue_elem *pq_elem = FUNC7(intern->heap, i);
			zval elem;
			FUNC9(&elem, pq_elem, SPL_PQUEUE_EXTR_BOTH);
			FUNC3(&heap_array, i, &elem);
		} else {
			zval *elem = FUNC7(intern->heap, i);
			FUNC3(&heap_array, i, elem);
			FUNC2(elem);
		}
	}

	pnstr = FUNC6(ce, "heap", sizeof("heap")-1);
	FUNC12(debug_info, pnstr, &heap_array);
	FUNC14(pnstr, 0);

	return debug_info;
}