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

/* Variables and functions */
 int YY__COLON ; 
 int YY__QUERY ; 
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int sym, zend_ffi_val *val) {
	zend_ffi_val op2, op3;
	sym = FUNC2(sym, val);
	if (sym == YY__QUERY) {
		sym = FUNC0();
		sym = FUNC1(sym, &op2);
		if (sym != YY__COLON) {
			FUNC3("':' expected, got", sym);
		}
		sym = FUNC0();
		sym = FUNC5(sym, &op3);
		FUNC4(val, &op2, &op3);
	}
	return sym;
}