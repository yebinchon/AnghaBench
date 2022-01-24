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
struct TYPE_7__ {int /*<<< orphan*/  u64; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ zend_ffi_val ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ zend_ffi_dcl ;
struct TYPE_9__ {int /*<<< orphan*/  align; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_FFI_VAL_UINT32 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(zend_ffi_val *val, zend_ffi_dcl *dcl) /* {{{ */
{
	FUNC1(dcl);
	val->kind = ZEND_FFI_VAL_UINT32;
	val->u64 = FUNC0(dcl->type)->align;
	FUNC2(dcl->type);
}