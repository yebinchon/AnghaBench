#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_9__ {int /*<<< orphan*/ * properties; } ;
struct TYPE_8__ {int ar_flags; int /*<<< orphan*/  array; TYPE_6__ std; } ;
typedef  TYPE_2__ spl_array_object ;
typedef  int /*<<< orphan*/  copy_ctor_func_t ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int SPL_ARRAY_IS_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * spl_ce_ArrayIterator ; 
 int /*<<< orphan*/ * spl_ce_ArrayObject ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  spl_handler_ArrayIterator ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ zval_add_ref ; 

__attribute__((used)) static HashTable* FUNC9(zend_object *obj, int *is_temp) /* {{{ */
{
	zval *storage;
	zend_string *zname;
	zend_class_entry *base;
	spl_array_object *intern = FUNC2(obj);

	if (!intern->std.properties) {
		FUNC1(&intern->std);
	}

	if (intern->ar_flags & SPL_ARRAY_IS_SELF) {
		*is_temp = 0;
		return intern->std.properties;
	} else {
		HashTable *debug_info;
		*is_temp = 1;

		debug_info = FUNC6(FUNC5(intern->std.properties) + 1);
		FUNC4(debug_info, intern->std.properties, (copy_ctor_func_t) zval_add_ref);

		storage = &intern->array;
		FUNC0(storage);

		base = obj->handlers == &spl_handler_ArrayIterator
			? spl_ce_ArrayIterator : spl_ce_ArrayObject;
		zname = FUNC3(base, "storage", sizeof("storage")-1);
		FUNC8(debug_info, zname, storage);
		FUNC7(zname, 0);

		return debug_info;
	}
}