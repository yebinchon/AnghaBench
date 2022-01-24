#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  attr; } ;
typedef  TYPE_1__ zend_ffi_dcl ;

/* Variables and functions */
 int YY_CONST ; 
 int YY_RESTRICT ; 
 int YY_VOLATILE ; 
 int YY__ATOMIC ; 
 int YY___CONST ; 
 int YY___CONST__ ; 
 int YY___RESTRICT ; 
 int YY___RESTRICT__ ; 
 int YY___VOLATILE ; 
 int YY___VOLATILE__ ; 
 int /*<<< orphan*/  ZEND_FFI_ATTR_CONST ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_ATOMIC ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_CONST ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_RESTRICT ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_VOLATILE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(int sym, zend_ffi_dcl *dcl) {
	if (sym == YY_CONST || sym == YY___CONST || sym == YY___CONST__) {
		sym = FUNC0();
		dcl->flags |= ZEND_FFI_DCL_CONST;
		dcl->attr |= ZEND_FFI_ATTR_CONST;
	} else if (sym == YY_RESTRICT || sym == YY___RESTRICT || sym == YY___RESTRICT__) {
		sym = FUNC0();
		dcl->flags |= ZEND_FFI_DCL_RESTRICT;
	} else if (sym == YY_VOLATILE || sym == YY___VOLATILE || sym == YY___VOLATILE__) {
		sym = FUNC0();
		dcl->flags |= ZEND_FFI_DCL_VOLATILE;
	} else if (sym == YY__ATOMIC) {
		sym = FUNC0();
		dcl->flags |= ZEND_FFI_DCL_ATOMIC;
	} else {
		FUNC1("unexpected", sym);
	}
	return sym;
}