#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_ffi_type ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_ffi_ctype ;

/* Variables and functions */
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ zend_ffi_ctype_ce ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(zval *o1, zval *o2) /* {{{ */
{
	if (FUNC3(o1) == IS_OBJECT && FUNC1(o1) == zend_ffi_ctype_ce &&
	    FUNC3(o2) == IS_OBJECT && FUNC1(o2) == zend_ffi_ctype_ce) {
		zend_ffi_ctype *ctype1 = (zend_ffi_ctype*)FUNC2(o1);
		zend_ffi_ctype *ctype2 = (zend_ffi_ctype*)FUNC2(o2);
		zend_ffi_type *type1 = FUNC0(ctype1->type);
		zend_ffi_type *type2 = FUNC0(ctype2->type);

		if (FUNC4(type1, type2)) {
			return 0;
		} else {
			return 1;
		}
	}
	FUNC5(zend_ffi_exception_ce, "Comparison of incompatible C types");
	return 0;
}