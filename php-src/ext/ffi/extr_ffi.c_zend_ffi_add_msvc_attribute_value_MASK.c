#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ kind; int i64; } ;
typedef  TYPE_1__ zend_ffi_val ;
struct TYPE_6__ {int align; } ;
typedef  TYPE_2__ zend_ffi_dcl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_FFI_VAL_INT32 ; 
 scalar_t__ ZEND_FFI_VAL_INT64 ; 
 scalar_t__ ZEND_FFI_VAL_UINT32 ; 
 scalar_t__ ZEND_FFI_VAL_UINT64 ; 
 int /*<<< orphan*/  line ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(zend_ffi_dcl *dcl, const char *name, size_t name_len, zend_ffi_val *val) /* {{{ */
{
	if (name_len == sizeof("align")-1 && FUNC1(name, "align", sizeof("align")-1) == 0) {
		if ((val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_INT64 || val->kind == ZEND_FFI_VAL_UINT64)
		 && val->i64 > 0 && val->i64 <= 0x80000000 && (val->i64 & (val->i64 - 1)) == 0) {
			dcl->align = val->i64;
		} else {
			FUNC2("incorrect 'alignment' value at line %d", FUNC0(line));
		}
	} else {
		/* ignore */
	}
}