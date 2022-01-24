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

/* Variables and functions */
 int YY_ID ; 
#define  YY__LBRACK 133 
#define  YY__LPAREN 132 
#define  YY__STAR 131 
#define  YY___ATTRIBUTE 130 
#define  YY___ATTRIBUTE__ 129 
#define  YY___DECLSPEC 128 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ yy_pos ; 
 scalar_t__ yy_text ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int sym) {
	if (sym != YY__LPAREN) {
		return -1;
	}
	sym = FUNC1();
	if ((sym == YY_ID) && (!FUNC2((const char*)yy_text, yy_pos - yy_text))) {
		sym = FUNC0(sym);
		if (sym == -1) {
			return -1;
		}
	} else {
		switch (sym) {
			case YY___ATTRIBUTE:
				sym = FUNC1();
				break;
			case YY___ATTRIBUTE__:
				sym = FUNC1();
				break;
			case YY___DECLSPEC:
				sym = FUNC1();
				break;
			case YY__STAR:
				sym = FUNC1();
				break;
			case YY__LPAREN:
				sym = FUNC1();
				break;
			case YY__LBRACK:
				sym = FUNC1();
				break;
			default:
				return -1;
		}
	}
	return sym;
}