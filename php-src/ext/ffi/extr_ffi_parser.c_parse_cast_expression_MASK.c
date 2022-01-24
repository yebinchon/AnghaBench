#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ffi_val ;
typedef  int /*<<< orphan*/  zend_ffi_dcl ;

/* Variables and functions */
 int YY__LPAREN ; 
 int YY__RPAREN ; 
 int /*<<< orphan*/  ZEND_FFI_ATTR_INIT ; 
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int sym, zend_ffi_val *val) {
	int do_cast = 0;
	zend_ffi_dcl dcl = ZEND_FFI_ATTR_INIT;
	if ((sym == YY__LPAREN) && FUNC3(sym)) {
		sym = FUNC0();
		sym = FUNC1(sym, &dcl);
		if (sym != YY__RPAREN) {
			FUNC4("')' expected, got", sym);
		}
		sym = FUNC0();
		do_cast = 1;
	}
	sym = FUNC2(sym, val);
	if (do_cast) FUNC5(val, &dcl);
	return sym;
}