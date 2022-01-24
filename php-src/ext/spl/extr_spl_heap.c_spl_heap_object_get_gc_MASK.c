#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_5__ {TYPE_1__* heap; } ;
typedef  TYPE_2__ spl_heap_object ;
struct TYPE_4__ {int count; scalar_t__ elements; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC2(zend_object *obj, zval **gc_data, int *gc_data_count) /* {{{ */
{
	spl_heap_object *intern = FUNC0(obj);
	*gc_data = (zval *) intern->heap->elements;
	*gc_data_count = intern->heap->count;

	return FUNC1(obj);
}