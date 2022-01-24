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
struct TYPE_4__ {scalar_t__ kind; int attr; } ;
typedef  TYPE_1__ zend_ffi_type ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_FFI_ATTR_INCOMPLETE_ARRAY ; 
 scalar_t__ ZEND_FFI_TYPE_ARRAY ; 
 scalar_t__ ZEND_FFI_TYPE_FUNC ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(zend_ffi_type *type) /* {{{ */
{
	if (type->kind == ZEND_FFI_TYPE_FUNC) {
		FUNC1("array of functions is not allowed at line %d", FUNC0(line));
		return FAILURE;
	} else if (type->kind == ZEND_FFI_TYPE_ARRAY && (type->attr & ZEND_FFI_ATTR_INCOMPLETE_ARRAY)) {
		FUNC1("only the leftmost array can be undimensioned at line %d", FUNC0(line));
		return FAILURE;
	}
	return FUNC2(type, 0, 1);
}