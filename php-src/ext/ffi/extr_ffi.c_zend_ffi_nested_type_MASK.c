#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* ret_type; } ;
struct TYPE_14__ {int length; TYPE_4__* type; } ;
struct TYPE_13__ {TYPE_4__* type; } ;
struct TYPE_16__ {int kind; int size; TYPE_3__ func; int /*<<< orphan*/  align; TYPE_2__ array; TYPE_1__ pointer; } ;
typedef  TYPE_4__ zend_ffi_type ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
#define  ZEND_FFI_TYPE_ARRAY 130 
#define  ZEND_FFI_TYPE_FUNC 129 
#define  ZEND_FFI_TYPE_POINTER 128 
 TYPE_4__ zend_ffi_type_char ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC5(zend_ffi_type *type, zend_ffi_type *nested_type) /* {{{ */
{
	nested_type = FUNC1(nested_type);
	switch (nested_type->kind) {
		case ZEND_FFI_TYPE_POINTER:
			/* "char" is used as a terminator of nested declaration */
			if (nested_type->pointer.type == &zend_ffi_type_char) {
				nested_type->pointer.type = type;
				return FUNC4(FUNC1(type));
			} else {
				return FUNC5(type, nested_type->pointer.type);
			}
			break;
		case ZEND_FFI_TYPE_ARRAY:
			/* "char" is used as a terminator of nested declaration */
			if (nested_type->array.type == &zend_ffi_type_char) {
				nested_type->array.type = type;
				if (FUNC2(FUNC1(type)) != SUCCESS) {
					return FAILURE;
				}
			} else {
				if (FUNC5(type, nested_type->array.type) != SUCCESS) {
					return FAILURE;
				}
			}
			nested_type->size = nested_type->array.length * FUNC1(nested_type->array.type)->size;
			nested_type->align = FUNC1(nested_type->array.type)->align;
			return SUCCESS;
			break;
		case ZEND_FFI_TYPE_FUNC:
			/* "char" is used as a terminator of nested declaration */
			if (nested_type->func.ret_type == &zend_ffi_type_char) {
				nested_type->func.ret_type = type;
				return FUNC3(FUNC1(type));
			} else {
				return FUNC5(type, nested_type->func.ret_type);
			}
			break;
		default:
			FUNC0(0);
	}
}