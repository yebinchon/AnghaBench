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
 int YY_COMMENT ; 
 int YY_EOL ; 
 int YY_ONE_LINE_COMMENT ; 
 int YY_WS ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void) {
	int sym;
	sym = FUNC0();
	while (sym == YY_EOL || sym == YY_WS || sym == YY_ONE_LINE_COMMENT || sym == YY_COMMENT) {
		if (sym == YY_EOL) {
			sym = FUNC2(sym);
		} else if (sym == YY_WS) {
			sym = FUNC4(sym);
		} else if (sym == YY_ONE_LINE_COMMENT) {
			sym = FUNC3(sym);
		} else {
			sym = FUNC1(sym);
		}
	}
	return sym;
}