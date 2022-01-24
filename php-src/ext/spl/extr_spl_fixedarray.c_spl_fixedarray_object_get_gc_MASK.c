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
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/ * elements; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
typedef  TYPE_2__ spl_fixedarray_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable* FUNC2(zend_object *obj, zval **table, int *n) /* {{{{ */
{
	spl_fixedarray_object *intern = FUNC0(obj);
	HashTable *ht = FUNC1(obj);

	*table = intern->array.elements;
	*n = (int)intern->array.size;

	return ht;
}