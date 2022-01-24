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
 int YY_ONE_LINE_COMMENT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(int sym) {
	if (sym != YY_ONE_LINE_COMMENT) {
		FUNC1("<ONE_LINE_COMMENT> expected, got", sym);
	}
	sym = FUNC0();
	return sym;
}