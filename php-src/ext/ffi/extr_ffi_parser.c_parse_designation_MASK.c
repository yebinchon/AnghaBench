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
 int YY__EQUAL ; 
 int YY__LBRACK ; 
 int YY__POINT ; 
 int YY__RBRACK ; 
 int FUNC0 () ; 
 int FUNC1 (int,char const**,size_t*) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(int sym) {
	const char *name;
	size_t name_len;
	zend_ffi_val dummy;
	do {
		if (sym == YY__LBRACK) {
			sym = FUNC0();
			sym = FUNC2(sym, &dummy);
			if (sym != YY__RBRACK) {
				FUNC3("']' expected, got", sym);
			}
			sym = FUNC0();
		} else if (sym == YY__POINT) {
			sym = FUNC0();
			sym = FUNC1(sym, &name, &name_len);
		} else {
			FUNC3("unexpected", sym);
		}
	} while (sym == YY__LBRACK || sym == YY__POINT);
	if (sym != YY__EQUAL) {
		FUNC3("'=' expected, got", sym);
	}
	sym = FUNC0();
	return sym;
}