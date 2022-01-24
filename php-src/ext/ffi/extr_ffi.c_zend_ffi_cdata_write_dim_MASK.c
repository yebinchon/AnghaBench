#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_ulong ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int zend_long ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {scalar_t__ kind; int attr; int size; TYPE_2__ pointer; TYPE_1__ array; } ;
typedef  TYPE_3__ zend_ffi_type ;
typedef  int zend_ffi_flags ;
struct TYPE_10__ {int flags; scalar_t__ ptr; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ zend_ffi_cdata ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_FFI_ATTR_CONST ; 
 int ZEND_FFI_FLAG_CONST ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_FFI_TYPE_ARRAY ; 
 scalar_t__ ZEND_FFI_TYPE_POINTER ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zend_object *obj, zval *offset, zval *value) /* {{{ */
{
	zend_ffi_cdata *cdata = (zend_ffi_cdata*)obj;
	zend_ffi_type  *type = FUNC2(cdata->type);
	zend_long       dim;
	void           *ptr;
	zend_ffi_flags  is_const;

	if (offset == NULL) {
		FUNC4(zend_ffi_exception_ce, "Cannot add next element to object of type FFI\\CData");
		return;
	}

	dim = FUNC5(offset);
	if (FUNC0(type->kind == ZEND_FFI_TYPE_ARRAY)) {
		if (FUNC1((zend_ulong)(dim) >= (zend_ulong)type->array.length)
		 && (FUNC1(dim < 0) || FUNC1(type->array.length != 0))) {
			FUNC4(zend_ffi_exception_ce, "C array index out of bounds");
			return;
		}

		is_const = (cdata->flags & ZEND_FFI_FLAG_CONST) | (zend_ffi_flags)(type->attr & ZEND_FFI_ATTR_CONST);
		type = FUNC2(type->array.type);
#if 0
		if (UNEXPECTED(!cdata->ptr)) {
			zend_throw_error(zend_ffi_exception_ce, "NULL pointer dereference");
			return;
		}
#endif
		ptr = (void*)(((char*)cdata->ptr) + type->size * dim);
	} else if (FUNC0(type->kind == ZEND_FFI_TYPE_POINTER)) {
		is_const = (cdata->flags & ZEND_FFI_FLAG_CONST) | (zend_ffi_flags)(type->attr & ZEND_FFI_ATTR_CONST);
		type = FUNC2(type->pointer.type);
		if (FUNC1(!cdata->ptr)) {
			FUNC4(zend_ffi_exception_ce, "NULL pointer dereference");
			return;
		}
		ptr = (void*)((*(char**)cdata->ptr) + type->size * dim);
	} else {
		FUNC4(zend_ffi_exception_ce, "Attempt to assign element of non C array");
		return;
	}

	if (FUNC1(is_const)) {
		FUNC4(zend_ffi_exception_ce, "Attempt to assign read-only location");
		return;
	}

	FUNC3(ptr, type, value);
}