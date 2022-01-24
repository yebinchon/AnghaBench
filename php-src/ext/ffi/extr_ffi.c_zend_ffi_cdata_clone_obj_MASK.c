#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_9__ {scalar_t__ kind; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ zend_ffi_type ;
struct TYPE_10__ {TYPE_1__ std; int /*<<< orphan*/  flags; int /*<<< orphan*/  ptr; TYPE_2__* type; } ;
typedef  TYPE_3__ zend_ffi_cdata ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_FFI_FLAG_OWNED ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ ZEND_FFI_TYPE_POINTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zend_ffi_cdata_ce ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zend_ffi_cdata_value_handlers ; 

__attribute__((used)) static zend_object *FUNC4(zend_object *obj) /* {{{ */
{
	zend_ffi_cdata *old_cdata = (zend_ffi_cdata*)obj;
	zend_ffi_type *type = FUNC0(old_cdata->type);
	zend_ffi_cdata *new_cdata;

	new_cdata = (zend_ffi_cdata*)FUNC3(zend_ffi_cdata_ce);
	if (type->kind < ZEND_FFI_TYPE_POINTER) {
		new_cdata->std.handlers = &zend_ffi_cdata_value_handlers;
	}
	new_cdata->type = type;
	new_cdata->ptr = FUNC1(type->size);
	FUNC2(new_cdata->ptr, old_cdata->ptr, type->size);
	new_cdata->flags |= ZEND_FFI_FLAG_OWNED;

	return &new_cdata->std;
}