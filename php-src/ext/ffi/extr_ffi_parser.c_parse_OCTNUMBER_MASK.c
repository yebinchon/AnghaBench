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
 int YY_OCTNUMBER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ yy_pos ; 
 scalar_t__ yy_text ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int sym, zend_ffi_val *val) {
	if (sym != YY_OCTNUMBER) {
		FUNC1("<OCTNUMBER> expected, got", sym);
	}
	FUNC2(val, 8, (const char*)yy_text, yy_pos - yy_text);
	sym = FUNC0();
	return sym;
}