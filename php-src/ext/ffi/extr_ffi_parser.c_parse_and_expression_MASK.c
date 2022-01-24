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
 int YY__AND ; 
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int sym, zend_ffi_val *val) {
	zend_ffi_val op2;
	sym = FUNC1(sym, val);
	while (sym == YY__AND) {
		sym = FUNC0();
		sym = FUNC1(sym, &op2);
		FUNC2(val, &op2);
	}
	return sym;
}