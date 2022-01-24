#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_1__ zend_ffi_type ;
typedef  int /*<<< orphan*/  zend_bool ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_FFI_TYPE_FUNC ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(zend_ffi_type *type, zend_bool allow_incomplete_array) /* {{{ */
{
	if (type->kind == ZEND_FFI_TYPE_FUNC) {
		FUNC1("'function' type is not allowed at line %d", FUNC0(line));
		return FAILURE;
	}
	return FUNC2(type, 0, allow_incomplete_array);
}