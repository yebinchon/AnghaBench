#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct TYPE_10__ {scalar_t__ kind; } ;
typedef  TYPE_2__ zend_ffi_type ;
struct TYPE_11__ {int by_ref; TYPE_1__ it; int /*<<< orphan*/  value; scalar_t__ key; } ;
typedef  TYPE_3__ zend_ffi_cdata_iterator ;
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ zend_ffi_cdata ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_FFI_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int) ; 
 int /*<<< orphan*/  zend_ffi_cdata_it_funcs ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static zend_object_iterator *FUNC8(zend_class_entry *ce, zval *object, int by_ref) /* {{{ */
{
	zend_ffi_cdata *cdata = (zend_ffi_cdata*)FUNC4(object);
	zend_ffi_type  *type = FUNC0(cdata->type);
	zend_ffi_cdata_iterator *iter;

	if (type->kind != ZEND_FFI_TYPE_ARRAY) {
		FUNC7(zend_ffi_exception_ce, "Attempt to iterate on non C array");
		return NULL;
	}

	iter = FUNC5(sizeof(zend_ffi_cdata_iterator));

	FUNC6(&iter->it);

	FUNC3(object);
	FUNC1(&iter->it.data, FUNC4(object));
	iter->it.funcs = &zend_ffi_cdata_it_funcs;
	iter->key = 0;
	iter->by_ref = by_ref;
	FUNC2(&iter->value);

	return &iter->it;
}