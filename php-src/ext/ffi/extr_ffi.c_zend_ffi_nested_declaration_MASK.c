#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_1__ zend_ffi_dcl ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  bailout ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_ffi_type_char ; 

void FUNC5(zend_ffi_dcl *dcl, zend_ffi_dcl *nested_dcl) /* {{{ */
{
	/* "char" is used as a terminator of nested declaration */
	FUNC3(dcl);
	if (!nested_dcl->type || nested_dcl->type == &zend_ffi_type_char) {
		nested_dcl->type = dcl->type;
	} else {
		if (FUNC4(dcl->type, nested_dcl->type) != SUCCESS) {
			FUNC2(nested_dcl);
			FUNC1(FUNC0(bailout), FAILURE);
		}
	}
	dcl->type = nested_dcl->type;
}