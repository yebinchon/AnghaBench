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
struct TYPE_14__ {scalar_t__ kind; int u64; int i64; int ch; } ;
typedef  TYPE_2__ zend_ffi_val ;
struct TYPE_13__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {int attr; int size; TYPE_1__ array; int /*<<< orphan*/  align; int /*<<< orphan*/  kind; } ;
typedef  TYPE_3__ zend_ffi_type ;
struct TYPE_16__ {int attr; scalar_t__ align; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ zend_ffi_dcl ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int ZEND_FFI_ARRAY_ATTRS ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_TYPE_QUALIFIERS ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_FFI_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ ZEND_FFI_VAL_CHAR ; 
 scalar_t__ ZEND_FFI_VAL_EMPTY ; 
 scalar_t__ ZEND_FFI_VAL_INT32 ; 
 scalar_t__ ZEND_FFI_VAL_INT64 ; 
 scalar_t__ ZEND_FFI_VAL_UINT32 ; 
 scalar_t__ ZEND_FFI_VAL_UINT64 ; 
 int /*<<< orphan*/  bailout ; 
 int /*<<< orphan*/  default_type_attr ; 
 int /*<<< orphan*/  line ; 
 TYPE_3__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  persistent ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 

void FUNC9(zend_ffi_dcl *dcl, zend_ffi_val *len) /* {{{ */
{
	int length = 0;
	zend_ffi_type *element_type;
	zend_ffi_type *type;

	FUNC6(dcl);
	element_type = FUNC2(dcl->type);

	if (len->kind == ZEND_FFI_VAL_EMPTY) {
		length = 0;
	} else if (len->kind == ZEND_FFI_VAL_UINT32 || len->kind == ZEND_FFI_VAL_UINT64) {
		length = len->u64;
	} else if (len->kind == ZEND_FFI_VAL_INT32 || len->kind == ZEND_FFI_VAL_INT64) {
		length = len->i64;
	} else if (len->kind == ZEND_FFI_VAL_CHAR) {
		length = len->ch;
	} else {
		FUNC5(dcl);
		FUNC7("unsupported array index type at line %d", FUNC0(line));
		return;
	}
	if (length < 0) {
		FUNC5(dcl);
		FUNC7("negative array index at line %d", FUNC0(line));
		return;
	}

	if (FUNC8(element_type) != SUCCESS) {
		FUNC5(dcl);
		FUNC1(FUNC0(bailout), FAILURE);
	}

	type = FUNC4(sizeof(zend_ffi_type), FUNC0(persistent));
	type->kind = ZEND_FFI_TYPE_ARRAY;
	type->attr = FUNC0(default_type_attr) | (dcl->attr & ZEND_FFI_ARRAY_ATTRS);
	type->size = length * element_type->size;
	type->align = element_type->align;
	type->array.type = dcl->type;
	type->array.length = length;
	dcl->type = FUNC3(type);
	dcl->flags &= ~ZEND_FFI_DCL_TYPE_QUALIFIERS;
	dcl->attr &= ~ZEND_FFI_ARRAY_ATTRS;
	dcl->align = 0;
}