#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fields; int /*<<< orphan*/ * tag_name; } ;
struct TYPE_8__ {int attr; int align; TYPE_1__ record; scalar_t__ size; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ zend_ffi_type ;
struct TYPE_9__ {int attr; int align; int flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ zend_ffi_dcl ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_FFI_ATTR_UNION ; 
 int ZEND_FFI_DCL_UNION ; 
 int ZEND_FFI_STRUCT_ATTRS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZEND_FFI_TYPE_STRUCT ; 
 int /*<<< orphan*/  default_type_attr ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  persistent ; 
 int /*<<< orphan*/  zend_ffi_field_hash_dtor ; 
 int /*<<< orphan*/  zend_ffi_field_hash_persistent_dtor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC4(zend_ffi_dcl *dcl) /* {{{ */
{
	zend_ffi_type *type = FUNC2(sizeof(zend_ffi_type), FUNC0(persistent));
	type->kind = ZEND_FFI_TYPE_STRUCT;
	type->attr = FUNC0(default_type_attr) | (dcl->attr & ZEND_FFI_STRUCT_ATTRS);
	type->size = 0;
	type->align = dcl->align > 1 ? dcl->align : 1;
	if (dcl->flags & ZEND_FFI_DCL_UNION) {
		type->attr |= ZEND_FFI_ATTR_UNION;
	}
	dcl->type = FUNC1(type);
	type->record.tag_name = NULL;
	FUNC3(&type->record.fields, 0, NULL, FUNC0(persistent) ? zend_ffi_field_hash_persistent_dtor :zend_ffi_field_hash_dtor, FUNC0(persistent));
	dcl->attr &= ~ZEND_FFI_STRUCT_ATTRS;
	dcl->align = 0;
}